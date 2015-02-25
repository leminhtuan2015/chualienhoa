class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :description
      t.text :url
      t.string :author

      t.references :lecture_store, index: true

      t.timestamps null: false
    end
  end
end
