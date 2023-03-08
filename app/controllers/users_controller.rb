class UsersController < ApplicationController

  def index
    @paperworkers = User.paperworker
  end

  def show
    @paperworker = User.paperworker.find(params[:id])
    
  end

end
