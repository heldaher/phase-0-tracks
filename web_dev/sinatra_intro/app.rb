# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

#new contact route
get '/contact' do
  "2347 Hamilton Dr, Portland, 20413"
end

#new great job route
#had an issue getting else to run when no name was provided
get '/great_job/:name' do
  name = params[:name]
  if name
    "Good job, #{name}"
  else
    "Good job!"
  end
end

#use param to add 2 numbers and respond with result
get '/:number_1/plus/:number_2' do
  number_one = params[:number_1]
  number_two = params[:number_2]
  number_one_i = number_one.to_i
  number_two_i = number_two.to_i
  number_three = number_one_i + number_two_i
  number_three.to_s
end

#bonus route attempt - did not work
get '/students/:Name' do
  student = db.execute("SELECT Name FROM students WHERE Name=?", [params[:Name]])
  student.to_s
end


# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end