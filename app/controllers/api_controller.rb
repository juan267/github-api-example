class ApiController < ApplicationController
  before_action :new_api_instance

  def members
    @followers = @api.gets("/users/juanfrc/followers")
  end


  private

  def new_api_instance
    @api = Github::Client.new
  end

end
