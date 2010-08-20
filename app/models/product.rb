class Product
  include MongoMapper::Document
  
  key :name, String, :required => true
  key :sku, String, :required => true
end
