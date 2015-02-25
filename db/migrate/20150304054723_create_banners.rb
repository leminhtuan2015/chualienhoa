class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.text :url

      t.timestamps null: false
    end
  end
end
