class Restaurant < ActiveRecord::Base
end

# CRUD

# CREATE

# restaurant = Restaurant.new(...)
# restaurant.save

# OR

# Restaurant.create(...) # like running .new + .save

# READ

# READ ALL

# Restaurant.all => returns an array with all the instances/records

# READ ONE

# Restaurant.find(2) -> returns a specific instance with that id

# UPDATE

# restaurant.name = "new name"
# restaurant.save

# DESTROY

# restaurant.destroy -> it destroy the specifi instance

# Restaurant.first
# Restaurant.last
# Restaurant.all.sample -> get a random restaurant

# FIND_BY -> returns the first match

# Restaurant.find_by(column_name: "..")
# Restaurant.find_by(name: "Mos Burger",address: "Meguro")

# Restaurant.find_by_address('Shibuya')
# Restaurant.find_by_name('Yoshinoya')

# COUNT

# Restaurant.count -> returns an integer

# WHERE -> returns a colelction/array

# Restaurant.where(column_name: "Meguro")
# Restaurant.where(address: "Meguro")

# Restaurant.where("any SQL")
# Restaurant.where("name LIKE ?", "%Burger%")

# Restaurant.order(created_at: :desc) -> collection in selected order
