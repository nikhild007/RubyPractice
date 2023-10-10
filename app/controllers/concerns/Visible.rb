module Visible
    extend ActiveSupport::Concern

    VALID_STATUS = ['public','private','archived']

    included do 
        validates :status, inclusion: { in: VALID_STATUS }
    end

    class_methods do
        # Methods here are directly callable
    end

    def isArchived?
        status == 'archived'
    end

    def getAllStatus
        VALID_STATUS
    end
end
