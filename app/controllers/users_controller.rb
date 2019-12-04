class UsersController < ApplicationController
  
  def index
  end

  def show
  	@sessions = current_user.sessions
  end

  def create

  end

  def edit
  end


end
