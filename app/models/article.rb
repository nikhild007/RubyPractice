class Article < ApplicationRecord
    has_many :comments
    validates :title, presence:{ message:"Title Cannot be Empty" }
    validates :body, presence:true,length: { minimum: 10 }

    VALID_STATUS = ['public','private','archived']
    validates :status, inclusion: { in: VALID_STATUS }

    def isArchived?
        status == 'archived'
    end

    def getAllStatus
        VALID_STATUS
    end
end
