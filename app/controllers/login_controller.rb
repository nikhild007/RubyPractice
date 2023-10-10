class LoginController < ApplicationController
    def index
        logger.warn params[:student]
    end
end
