require 'mongo'

# set up database access
conn = Mongo:Connection("localhost", 27017, :slave_ok => true)
db = conn.db("Kritk")

# this will be our products collection
products = db["products"]

#some clean up
products.remove()

#create new product
product = {"name" => "Canon DSLR 9000", "sku" => "12345", "tags" => ["camera", "digital camera", "electronics"], 
		"sold_at" => ["Best Buy", "PC Richards"],
		"reviewed_by" => [{"name" => "burag", "friend_on" => "Facebook", "comments" => "This is so cool"}, {"name" => "Paulo", "friend_on" => "Twitter", "comments" => "Decent camera for a good price"}]}

products.insert(product)

# look for product
result = products.find("name" => "Canon DSLR 9000").each { |row| puts row.inspect }
