class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.date :birthday
      t.string :gender
      t.string :tel
      t.string :address

      t.timestamps null: false
    end
  end
end
