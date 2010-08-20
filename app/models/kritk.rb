class Kritk
  include MongoMapper::Document
  
  key :name, String, :required => true
  key :kritk_login, String
  key :kritk_pwd, String
  key :has_facebook, Boolean
  key :has_twitter, Boolean
  key :has_linked_in, Boolean
  
  many :social_friends
  many :product_reviews
  
end
