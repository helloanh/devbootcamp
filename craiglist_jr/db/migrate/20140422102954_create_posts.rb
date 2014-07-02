class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category
      t.string :title
      t.text :description
      t.string :email
      t.float :price
      t.string :location
      t.string :url
    end
  end
end
