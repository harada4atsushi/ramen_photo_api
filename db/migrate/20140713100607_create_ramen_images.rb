class CreateRamenImages < ActiveRecord::Migration
  def change
    create_table :ramen_images do |t|
      t.string :test

      t.timestamps
    end
  end
end
