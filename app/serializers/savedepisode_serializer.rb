class SavedepisodeSerializer
  # include FastJsonapi::ObjectSerializer
  # attributes
  def initialize(savedepisode)
    @savedepisode=savedepisode
  end

  def to_serialized_json
    options={
      # include:{
      #   user:{
      #     only: [:username,:cash_balance]
      #   }
      # }
    }
    @savedepisode.to_json(options)
  end
end
