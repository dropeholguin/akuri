class AddAttachmentImageToEstablishments < ActiveRecord::Migration
  def self.up
    change_table :establishments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :establishments, :image
  end
end
