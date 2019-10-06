class PodcastSerializer
  # include FastJsonapi::ObjectSerializer
  # attributes

  def initialize(podcast)
    @podcast=podcast
  end

  def to_serialized_json
    options={
      # include:{
      #   user:{
      #     only: [:username,:cash_balance]
      #   }
      # }
    }
    @podcast.to_json(options)
  end
end
