class Comment
  include Mongoid::Document
  field :name
  field :content
  embedded_in :article, :inverse_of => :comments
  
  validates_presence_of :name, :content
end


# c=Comment.first
#Mongoid::Errors::InvalidCollection: Access to the collection for Comment is not allowed since 
#it is an embedded document, please access a collection from the root document.



#ar=Article.first
#undefined method `comments' for #<Author:0x000000032f1388>

