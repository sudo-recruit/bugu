class FrontedController < ApplicationController
  def index
  	@bugs = Bug.includes(:user).order(created_at: :desc)
  end
end
