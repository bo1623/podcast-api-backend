class SavedepisodesController < ApplicationController

  def index

  end

  def create
    user=User.find_or_create_by(username: params[:username])
    savedepisodes=user.savedepisodes.map{|savedep| savedep.episode}
    render json: SavedepisodeSerializer.new(savedepisodes).to_serialized_json
  end

  def destroy
    raise params.inspect
  end

end
