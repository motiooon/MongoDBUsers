class User
  include MongoMapper::Document

  key :first_name, String
  key :last_name, String
  key :age, Integer
  timestamps!
  
  attr_accessible :first_name, :last_name, :age
  
  many :hobbies

  scope :smiths, where(:last_name => "Smith")
  scope :johns, where(:first_name => "John")
end  
