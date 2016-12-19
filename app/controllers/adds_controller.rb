class AddsController < ApplicationController
  def create
    Song.find(params[:s_id]).adds.create(user: current_user)
    redirect_to '/songs/new'
#song's id
end
end
