class AddsController < ApplicationController
  def create
    Song.find(params[:s_id]).adds.create(user: current_user)
    # binding.pry
    # binding.pry
    redirect_to '/songs'
#song's id
end
end
