class Book
  include Mongoid::Document
  field :title, type: String
  field :short_des, type: String
  field :long_des, type: String
  field :chapter_index, type: Integer
  field :published, :type => DateTime
  field :genre, type: String
  
  embedded_in :authors
  embeds_many :reviews

  
end
