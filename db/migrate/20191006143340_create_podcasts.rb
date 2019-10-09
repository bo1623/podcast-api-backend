class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|

      t.string :podcast_title
      t.string :image_url
      t.string :audio_url
      t.integer :audio_length
      t.string :podcast_id 
      t.string :description
      # t.integer :publication_date use only for episodes

      t.timestamps
    end
  end
end
