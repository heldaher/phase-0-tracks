#require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("articles.db")
db.results_as_hash = true

#make a create table command - delimiter
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS articles(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255)
  )
SQL

#Execute
db.execute(create_table_cmd)

#add test article
#db.execute("INSERT INTO articles (name, genre) VALUES ('tesla master plan 2', 'business')")

#get user input
loop do
  puts "Please enter an article name (or type 'done')"
  article_name = gets.chomp

  if article_name == 'done'
  	break
  else 
  	puts "Please enter the genre of the article"
    article_genre = gets.chomp
  end
 end


#explore ORM
articles = db.execute("SELECT * FROM articles")
#puts articles.class
#p articles
articles.each do |article|
  puts "#{article['name']} is a #{article['genre']} article"
end
