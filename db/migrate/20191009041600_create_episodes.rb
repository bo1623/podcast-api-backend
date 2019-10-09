class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.references :podcast, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
