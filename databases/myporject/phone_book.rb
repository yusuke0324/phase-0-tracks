require 'sqlite3'

db = SQLite3::Database.new("phone_book.db")
db.results_as_hash = true

create_tabLe_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number VARCHAR(255),
    email VARCHAR(255)
  )
SQL

db.execute(create_tabLe_cmd);

def create_contact(db, name, number, email)
  db.execute("INSERT INTO contacts (name, number, email) VALUES (?,?,?)", [name, number, email])
  puts "Created!!"
end

def delete_contact(db, id)
  db.execute("DELETE FROM contacts WHERE id = ?",id)
  puts "Deleted!"
end

def  update_contact_number(db, id, newNumber)
  db.execute("UPDATE contacts SET number = ? WHERE id = ?", [newNumber,id])
  puts "This is updated contact"
  show_contact(db, id)
end

def  update_contact_name(db, id, newName)
  db.execute("UPDATE contacts SET name = ? WHERE id = ?", [newName,id])
  puts "This is updated contact"
  show_contact(db, id)
end

def  update_contact_email(db, id, newEmail)
  db.execute("UPDATE contacts SET email = ? WHERE id = ?", [newEmail,id])
  puts "This is updated contact"
  show_contact(db, id)
end

def show_contacts(db)
  contacts = db.execute("SELECT * FROM contacts")
  puts "# | name | number | email"
  contacts.each do |contact|
    puts "#{contact['id']} | #{contact['name']} | #{contact['number']} | #{contact['email']}"
  end
end

def show_contact(db, id)
  contact = db.execute("SELECT * FROM contacts WHERE Id = ?",id)[0]
  # puts contact
  puts "#{contact['id']} | #{contact['name']} | #{contact['number']} | #{contact['email']}"
end

puts "Hello, Welcom to phone book!!"
while true do
  puts "How may I help you?"
  puts "1|Show all contact info on the books"
  puts "2|Create new contact"
  puts "9|Exit"
  input_first = gets.chomp
  if input_first == "9"
    exit
  elsif input_first == "1"
    show_contacts(db)
    puts "Which one do you want to work on? enter #"
    input_id =gets.chomp.to_i
    show_contact(db, input_id)
    while true
      puts "what do you want to do with it?"
      puts "1|EDIT"
      puts "2|DELETE"
      puts "3|NOTHING"
      input_second = gets.chomp
      if input_second == "1"
        while true
          puts "What do you want to edit?"
          puts "1|Name"
          puts "2|Number"
          puts "3|Email"
          puts "4|Nothing"
          input_third = gets.chomp
          if input_third == "1"
            puts "Tell me new name"
            new_name = gets.chomp
            update_contact_name(db, input_id, new_name)
            next
          elsif input_third == "2"
            puts "Tell me new number"
            new_number = gets.chomp
            update_contact_number(db, input_id, new_number)
            next
          elsif input_third == "3"
            puts "Tell me new email"
            new_email = gets.chomp
            update_contact_email(db, input_id, new_email)
            next
          elsif input_third == "4"
            break
          end
        end
      elsif input_second == "2"
        delete_contact(db,input_id)
        break
      elsif input_second == "3"
        break
      else
        puts "Please input valid number."
        next
      end
    end
  elsif input_first == "2"
    puts "name?"
    name = gets.chomp
    puts "number?"
    number = gets.chomp
    puts "email"
    email = gets.chomp
    create_contact(db, name, number, email)
    next
  else
    puts "Please input valid number."
    next
  end
end