class ProductReview
  include MongoMapper::EmbeddedDocument
  
  key :review, String
  key :bought_at, String
  
end
