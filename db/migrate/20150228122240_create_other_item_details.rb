class CreateOtherItemDetails < ActiveRecord::Migration
  def change
    create_table :other_item_details do |t|
      t.string :name
      t.string :source
      t.string :author
      t.string :postor
      t.string :translator
      t.string :during
      t.string :place
      t.text :content
      t.text :image_link
      t.string :image_upload
      t.text :url
      t.text :description
      t.string :status
      t.string :view
      t.string :show
      t.text :params

      t.references :other_item, index: true

      t.timestamps null: false
    end
  end
end
