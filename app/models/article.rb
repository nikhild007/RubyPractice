class Article < ApplicationRecord
    has_many :comments
    validates :title, presence:{ message:"Title Cannot be Empty" }
    validates :body, presence:true,length: { minimum: 10 }

    include Visible
end
