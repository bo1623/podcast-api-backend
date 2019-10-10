class ReviewSerializer
  # include FastJsonapi::ObjectSerializer
  # attributes
  def initialize(review)
    @review=review
  end

  def to_serialized_json
    options={
      include:{
        user:{
          only: [:username]
        }
      }
    }
    @review.to_json(options)
  end
end
