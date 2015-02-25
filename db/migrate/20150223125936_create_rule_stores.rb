class CreateRuleStores < ActiveRecord::Migration
  def change
    create_table :rule_stores do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
