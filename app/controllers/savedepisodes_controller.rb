class SavedepisodesController < ApplicationController

  def index

  end

  def create
    user=User.find_or_create_by(username: params[:username])
    savedepisodes=user.savedepisodes.map{|savedep| savedep.episode}
    render json: SavedepisodeSerializer.new(savedepisodes).to_serialized_json
  end

  def destroy
    episode=Episode.find_by(episode_id: params[:episode_id])
    user=User.find_by(username: params[:username])
    savedepisode=Savedepisode.find_by(episode: episode, user: user)
    Savedepisode.destroy(savedepisode.id)
  end

end
