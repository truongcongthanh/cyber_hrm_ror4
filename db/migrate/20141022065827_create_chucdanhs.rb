class CreateChucdanhs < ActiveRecord::Migration
  def change
    create_table :chucdanhs do |t|
      t.string :ma
      t.string :ten
      t.references :nhomchucdanh, index: true

      t.timestamps
    end
  end
end
