class FrontedController < ApplicationController
  def index
  	@bugs = Bug.all
  end
end
