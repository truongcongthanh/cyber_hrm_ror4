class CreateQuanhuyens < ActiveRecord::Migration
  def change
    create_table :quanhuyens do |t|
      t.string :ma
      t.string :ten
      t.references :tinhthanhpho, index: true

      t.timestamps
    end
  end
end
