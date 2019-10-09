class CreateSavedepisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :savedepisodes do |t|
      t.references :episode, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
