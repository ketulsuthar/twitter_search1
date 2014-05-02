class User
  include MongoMapper::Document
  key :name, String
  key :screen_name, String
  key :email, String
  timestamps!
  #attr_accessible :name, :screen_name, :email
end
