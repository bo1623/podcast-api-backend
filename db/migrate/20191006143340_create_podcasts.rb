class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|

      t.string :title
      t.string :image_url
      t.string :audio_url

      t.timestamps
    end
  end
end
