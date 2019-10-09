class EpisodeSerializer
  # include FastJsonapi::ObjectSerializer
  # attributes

  def initialize(episode)
    @episode=episode
  end

  def to_serialized_json
    options={
      # include:{
      #   user:{
      #     only: [:username,:cash_balance]
      #   }
      # }
    }
    @episode.to_json(options)
  end
end
