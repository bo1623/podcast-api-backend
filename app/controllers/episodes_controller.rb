class EpisodesController < ApplicationController

  def create
    episode=params[:_json]
    User.find_or_create_by(username: episode[:username])

    render json: {episode: params[:_json]}
  end

end


{title: "Discovering Vanguard’s new commodity fund", audio_url: "https://www.listennotes.com/e/be229729b28d4e74a1033310441836b3/", podcast_id: "56e5fad3a049444bbf8ecac4a4b0d2b9", episode_id: "be229729b28d4e74a1033310441836b3", audio_length: 1264, …}
audio_length: 1264
audio_url: "https://www.listennotes.com/e/be229729b28d4e74a1033310441836b3/"
description: "In this 16-minute podcast, Frank Chism, Vanguard senior product manager, lays out the ABCs of commodities investing and explains Vanguard Commodity Strategy Fund."
episode_id: "be229729b28d4e74a1033310441836b3"
podcast_id: "56e5fad3a049444bbf8ecac4a4b0d2b9"
published_date: 1570114533000
title: "Discovering Vanguard’s new commodity fund"
username: "Trader1"
