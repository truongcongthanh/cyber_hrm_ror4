class CreateHedaotaos < ActiveRecord::Migration
  def change
    create_table :hedaotaos do |t|
      t.string :ma
      t.string :ten
      t.text :diengiai

      t.timestamps
    end
  end
end
