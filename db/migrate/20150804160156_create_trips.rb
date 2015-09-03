class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.strinig :destination
      t.string :image_url
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
