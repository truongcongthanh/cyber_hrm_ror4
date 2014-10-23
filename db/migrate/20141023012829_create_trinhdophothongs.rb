class CreateTrinhdophothongs < ActiveRecord::Migration
  def change
    create_table :trinhdophothongs do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
