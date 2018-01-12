class AddAttachmentImageToResources < ActiveRecord::Migration[5.1]
  def self.up
    change_table :resources do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :resources, :image
  end
end
