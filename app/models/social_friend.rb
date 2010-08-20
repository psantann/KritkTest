class SocialFriend
  
  include MongoMapper::EmbeddedDocument
  
  key :name, String, :required => true
  key :has_facebook, Boolean
  key :has_twitter, Boolean
  key :has_linked_in, Boolean
  key :has_kritk, Boolean
  key :kritk_id, String
  key :trust_level, String

  
end
