class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.date :posted_on
      t.string :featured_img
      t.string :content
      t.integer :category

      t.timestamps null: false
    end
  end
end
