class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.destination :string
      t.image_url :string
      t.date :date
      t.description :text

      t.timestamps null: false
    end
  end
end
