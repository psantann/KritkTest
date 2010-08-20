class Product
  include MongoMapper::Document

  key :name, String
  key :sku, String
  
end
