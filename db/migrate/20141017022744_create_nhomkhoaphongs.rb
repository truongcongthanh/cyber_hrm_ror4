class CreateNhomkhoaphongs < ActiveRecord::Migration
  def change
    create_table :nhomkhoaphongs do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
