class CreateTools < ActiveRecord::Migration[8.0]
  def change
    create_table :tools do |t|
      t.string :tool_name
      t.string :brand_name
      t.date :purchase_date
      t.string :purchase_location
      t.string :waranty_lenght

      t.timestamps
    end
  end
end
