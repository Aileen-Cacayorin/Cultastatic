class AddLocation < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :movie_id, :integer
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip, :string
      t.column :latitude, :float
      t.column :longitude, :float

      t.timestamps null: false
    end
  end
end
