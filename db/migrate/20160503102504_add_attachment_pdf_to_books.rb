class AddAttachmentPdfToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :books, :pdf
  end
end
