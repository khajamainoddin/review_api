class Review
  include Mongoid::Document
  field :name, type: String
  field :rating, type: Integer
  field :title, type: String
  field :description, type: String
  
 # embedded_in :authors
  embedded_in :books
end
