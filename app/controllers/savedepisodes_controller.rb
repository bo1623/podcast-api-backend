class SavedepisodesController < ApplicationController

  def index

  end

  def create
    raise params.inspect
    user=User.find_or_create_by(username: params[:username])
    
  end

end
