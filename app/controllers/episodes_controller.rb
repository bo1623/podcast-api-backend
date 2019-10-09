class EpisodesController < ApplicationController

  def create
    details=eval(params[:_json]) #converting stringified hash to an actual ruby hash with the use of eval
    user=User.find_or_create_by(username: details[:username])

    episode_hash=details[:episode]
    podcast_hash=details[:podcast]
    podcast_hash=podcast_hash.reject { |k,v| k == :total_episodes } #don't want to save total_episodes because it's non-constant

    #creating podcast and episode, and assigning relationship of this episode to the podcast
    podcast=Podcast.find_or_create_by(podcast_hash)
    episode=Episode.find_or_create_by(episode_hash)
    episode.podcast=podcast
    episode.save

    #create savedepisode instance
    savedepisode=Savedepisode.create(user: user, episode: episode)
    savedepisodes=user.savedepisodes.map{|savedep| savedep.episode}

    render json: EpisodeSerializer.new(savedepisodes).to_serialized_json
  end

  def index
    episodes=Episode.all[0]
    render json: EpisodeSerializer.new(episodes).to_serialized_json
  end

end


# {title: "Discovering Vanguard’s new commodity fund", audio_url: "https://www.listennotes.com/e/be229729b28d4e74a1033310441836b3/", podcast_id: "56e5fad3a049444bbf8ecac4a4b0d2b9", episode_id: "be229729b28d4e74a1033310441836b3", audio_length: 1264, …}
# audio_length: 1264
# audio_url: "https://www.listennotes.com/e/be229729b28d4e74a1033310441836b3/"
# description: "In this 16-minute podcast, Frank Chism, Vanguard senior product manager, lays out the ABCs of commodities investing and explains Vanguard Commodity Strategy Fund."
# episode_id: "be229729b28d4e74a1033310441836b3"
# podcast_id: "56e5fad3a049444bbf8ecac4a4b0d2b9"
# published_date: 1570114533000
# title: "Discovering Vanguard’s new commodity fund"
# username: "Trader1"
