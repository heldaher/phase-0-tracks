#require gems
require 'sqlite3'

#create SQLite3 database
db = SQLite3::Database.new("articles.db")
db.results_as_hash = true

#make a create table command
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS articles(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255),
    publish_date INT,
    must_read BOOLEAN,
    est_reading_time_mins INT
  )
SQL

#execute create table command
db.execute(create_table_cmd)

#get user input - new articles to add to article hub
loop do
  puts "Please enter an article name (or type 'done')"
  article_name = gets.chomp

  if article_name == 'done'
  	break
  else 
  	puts "Please enter the genre of the article"
      article_genre = gets.chomp
    puts "Please enter the publishdate (MMDDYY) of the article"
      article_publish_date = gets.chomp
    puts "Is this article a must-read (true/false)"
      article_must_read = gets.chomp
    puts "Please enter the estimated time in minutes needed to read the article"
      article_est_reading_time_mins = gets.chomp

    db.execute("INSERT INTO articles (name, genre, publish_date, must_read, est_reading_time_mins) 
    	VALUES ('#{article_name}',
    	'#{article_genre}',
    	'#{article_publish_date}',
    	'#{article_must_read}',
    	'#{article_est_reading_time_mins}')")
  end
 end

#explore ORM
articles = db.execute("SELECT * FROM articles")
articles.each do |article|
  puts "#{article['name']} is a #{article['genre']} article. Must-read? #{article['must_read']}"
end

#clear table
#db.execute("DELETE FROM articles")

#idea - allow user to change must_read value if they disagree
puts "----------------"
puts "Did you disagree with any of the must-read indicators? (y/n)"
  must_read_agree = gets.chomp
  if must_read_agree == 'n'
    puts "Glad you agree"
  elsif must_read_agree == 'y'
    any_more_disagreements = ''
    until any_more_disagreements == 'n'
    puts "Which article was, in your view, incorrectly called must-read? Please enter the name (or type 'none')."
      false_positive = gets.chomp
      db.execute("UPDATE articles SET must_read='false' WHERE name='#{false_positive}'")
    puts "Which article was, in your view, incorrectly NOT called must-read? Please enter the name (or type 'none')."
      false_negative = gets.chomp
      db.execute("UPDATE articles SET must_read='true' WHERE name='#{false_negative}'")
    puts "Did you disagree with any other of the must-read indicators? (y/n)"
    any_more_disagreements = gets.chomp
    end
  end

