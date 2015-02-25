class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|

    	t.string :name
      t.string :during
      t.string :place
      t.text :content
      t.text :image_link
      t.string :image_upload
      t.text :description

      t.timestamps null: false
    end
  end
end
