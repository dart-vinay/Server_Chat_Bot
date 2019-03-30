class AddAttachmentPhotoToData < ActiveRecord::Migration[5.2]
  def self.up
    change_table :data do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :data, :photo
  end
end
