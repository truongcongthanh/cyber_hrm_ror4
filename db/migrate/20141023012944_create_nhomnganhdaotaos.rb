class CreateNhomnganhdaotaos < ActiveRecord::Migration
  def change
    create_table :nhomnganhdaotaos do |t|
      t.string :ma
      t.string :ten
      t.text :diengiai

      t.timestamps
    end
  end
end
