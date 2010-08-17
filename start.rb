require 'mongo'

conn = Mongo:Connection("localhost", 27017, :slave_ok => true)
db = conn.db("Kritk")

