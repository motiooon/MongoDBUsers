class Hobby
  include MongoMapper::EmbeddedDocument

  key :name,    String
  key :started, Time
end