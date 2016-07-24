#require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("articles.db")

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
db.execute("INSERT INTO articles (name, genre) VALUES ('tesla master plan 2', 'business')")