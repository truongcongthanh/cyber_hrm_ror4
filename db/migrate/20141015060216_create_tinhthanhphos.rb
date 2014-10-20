class CreateTinhthanhphos < ActiveRecord::Migration
  def change
    create_table :tinhthanhphos do |t|
      t.string :ma
      t.string :ten
      t.references :vungdialy, index: true

      t.timestamps
    end
  end
end
