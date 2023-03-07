class UsersController < ApplicationController

  def index
    @paperworkers = User.paperworker
  end
end
