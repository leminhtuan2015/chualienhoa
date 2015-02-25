class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.string :author
      t.string :translator
      t.text :image_link
      t.string :image_upload
      t.text :content

      t.references :article_store, index: true

      t.timestamps null: false
    end
  end
end
