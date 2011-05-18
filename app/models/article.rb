class Article
  include Mongoid::Document
  
  #DATABASE FIELD NAMES
  field :name
  field :content
  field :published_on, :type => Date
  embeds_many :comments
  before_validation :parse_date_values
  referenced_in :author
  validates_presence_of :name
  
  def parse_date_values
    self.published_on = Date.new(self.attributes["published_on(1i)"].to_i, self.attributes["published_on(2i)"].to_i, self.attributes["published_on(3i)"].to_i)
  end
end
