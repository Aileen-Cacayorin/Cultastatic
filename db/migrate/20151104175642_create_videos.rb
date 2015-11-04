class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.string :uid
      t.string :title
      t.integer :movie_id
      t.timestamps null: false
    end
  end
end
