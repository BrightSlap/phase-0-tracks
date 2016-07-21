# Do you even lift?

# require gems
require 'sqlite3'

# create sqlite database
db = SQLite3::Database.new("All_The_Gains.db")
db.results_as_hash = true

db.execute("DROP TABLE exercise")

# create table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS exercise(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    sets INTEGER,
    repetitions INTEGER
  )
SQL

db.execute(create_table_cmd)

def create_workout(db, name, sets, repetitions)
  db.execute("INSERT INTO exercise (name, sets, repetitions) VALUES (?, ?, ?)", [name, sets, repetitions])
end

create_workout(db, 'push-ups', 3, 10)
create_workout(db, 'sit-ups', 3, 10)
create_workout(db, 'squats', 3, 10)

exercise = db.execute("SELECT * FROM exercise")

puts "Here's your workout for this week:"
exercise.each do |exercise|
	puts "#{exercise['repetitions']} of #{exercise['name']}, #{exercise['sets']} each."
end

puts "Would you like to upgrade your workout? (y/n)"
if change = gets.chomp != "y"
	puts "Okay, keep up the good sweat!"
else
	db.execute "UPDATE exercise SET sets=4 WHERE name='push-ups'"
	db.execute "UPDATE exercise SET repetitions=15 WHERE name='push-ups'"
	db.execute "UPDATE exercise SET sets=4 WHERE name='sit-ups'"
	db.execute "UPDATE exercise SET repetitions=15 WHERE name='sit-ups'"
	db.execute "UPDATE exercise SET sets=4 WHERE name='squats'"
	db.execute "UPDATE exercise SET repetitions=15 WHERE name='squats'"
	puts "Here's your new routine:"
	exercise.each do |exercise|
		puts "#{exercise['repetitions']} of #{exercise['name']}, #{exercise['sets']} each."
	end
end


# can't get the update syntax to work, no error is given but the table isn't updated with new values.
# tried looking up syntaxes but they look the same compared to mine"
# http://zetcode.com/db/sqliteruby/trans/

# if I tried using bind_parameters (db.execute "UPDATE exercise SET repetitions=? WHERE name='?'", [repetitions, name]),
# I get the following errors:
# c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11-x86-mingw32/
# lib/sqlite3/statement.rb:41:in `bind_param': bind or column index out of range (
# SQLite3::RangeException)
#         from c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11
# -x86-mingw32/lib/sqlite3/statement.rb:41:in `block in bind_params'
#         from c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11
# -x86-mingw32/lib/sqlite3/statement.rb:37:in `each'
#         from c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11
# -x86-mingw32/lib/sqlite3/statement.rb:37:in `bind_params'
#         from c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11
# -x86-mingw32/lib/sqlite3/database.rb:135:in `block in execute'
#         from c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11
# -x86-mingw32/lib/sqlite3/database.rb:95:in `prepare'
#         from c:/RailsInstaller/Ruby2.1.0/lib/ruby/gems/2.1.0/gems/sqlite3-1.3.11
# -x86-mingw32/lib/sqlite3/database.rb:134:in `execute'
#         from exercise.rb:40:in `update_workout'
#         from exercise.rb:48:in `<main>'