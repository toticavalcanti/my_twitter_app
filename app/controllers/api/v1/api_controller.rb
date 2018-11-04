module Api
  module V1
    class ApiController < ApplicationController
      include Knock::Authenticable
      include CanCan::ControllerAdditions
    
      #> Métodos globais
    end
  end
end