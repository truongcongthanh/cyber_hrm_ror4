class CreateNhombangcaps < ActiveRecord::Migration
  def change
    create_table :nhombangcaps do |t|
      t.string :ma
      t.string :ten
      t.text :diengiai

      t.timestamps
    end
  end
end
