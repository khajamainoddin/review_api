class Author
  include Mongoid::Document
  field :name, type: String
  field :bio, type: String
  field :pic, type: String
  field :academics, type: String
  field :awards, type: String

  embeds_many :books
  #embeds_many :reviews
end
