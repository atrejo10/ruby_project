class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :user, index: true
      t.references :category, index: true
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :photos, :users
    add_foreign_key :photos, :categories
  end
end
