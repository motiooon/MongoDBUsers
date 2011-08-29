class User
  include MongoMapper::Document

  key :first_name, String
  key :last_name, String
  key :age, Integer
  key :twitter, String
  timestamps!
  
  attr_accessible :first_name, :last_name, :age, :twitter
  
  many :hobbies

  scope :smiths, where(:last_name => "Smith")
  scope :johns, where(:first_name => "John")

  def full_name
    "#{first_name}, #{last_name} "
  end

  def stripfromTwitter
   "#{twitter}".sub( "@", "" )
  end
    
  
end  
