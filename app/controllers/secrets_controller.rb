class SecretsController < ApplicationController
    before_action :require_name

    def show
    end

    private

    def require_name
        unless session.include? :name
            redirect_to '/login'
        end
    end
end

