class AddAttachmentImageToRamenImages < ActiveRecord::Migration
  def self.up
    change_table :ramen_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :ramen_images, :image
  end
end
