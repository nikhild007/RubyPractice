class Article < ApplicationRecord
    validates :title,presence:{ message:"Title Cannot be Emply" }
    validates :body,presence:true,length: { minimum: 10 }
end
