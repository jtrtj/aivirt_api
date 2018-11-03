class WelcomeController < ApplicationController
  def index
    render json: { 'message': 'Welcome to the Aivirt API, Documentation can be found at https://github.com/jtrtj/aivirt_api' },
           status: 200
  end
end