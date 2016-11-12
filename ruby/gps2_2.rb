# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split up the string into the words,
  # iterate through the array and add the objects as keys
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
  # output: [what data type goes here, array or hash?] => hash 

# Method to add an item to a list
# input: item name and optional quantity
# steps: add the item to the hash
# output: the updated hash

# Method to remove an item from the list
# input: key of the hash
# steps: delete the inputed key
# output: the updated hash

# Method to update the quantity of an item
# input: key and the desired value
# steps: update the value of the assigned key
# output: the updated hash

# Method to print a list and make it look pretty
# input: the hash
# steps: we can iterate the hash with key and value and print every pair
# output: nil 


#Method to create a list


def create_list(item_list)
  shopping_list = {}
  shopping_array = item_list.split(' ')
  shopping_array.each do |item|
    shopping_list[item] = 1
  end
  shopping_list
end

# shopping_list = create_list("apples carrots pizza")



def add_item(name, quantity = 1, shopping_list)
  shopping_list[name] = quantity
  shopping_list
end

# add_item("pear",3 , shopping_list)

def remove_item(name, shopping_list)
  shopping_list.delete(name)
  shopping_list
end

# remove_item("apples", shopping_list)

def update_quantity(name, quantity, shopping_list)
  shopping_list[name] = quantity
  shopping_list
end

# update_quantity("carrots", 4, shopping_list)

def print_list(shopping_list)

  shopping_list.each do |item, quantity|
    puts "You need to buy #{quantity} #{item}!"
  end
end

# print_list(shopping_list)

shopping_list = create_list("")
add_item("Lemonade",2, shopping_list)
add_item("Tomatoes",3, shopping_list)
add_item("Onions",1, shopping_list)
add_item("Ice Cream",4, shopping_list)

remove_item("Lemonade", shopping_list)
update_quantity("Ice Cream", 1, shopping_list)


print_list(shopping_list)

















