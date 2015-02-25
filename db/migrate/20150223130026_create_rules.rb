class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.text :description
      t.string :author
      t.string :translator
      t.text :image_link
      t.string :image_upload
      t.text :content

      t.references :rule_store, index: true

      t.timestamps null: false
    end
  end
end
