class CreateNoidaotaos < ActiveRecord::Migration
  def change
    create_table :noidaotaos do |t|
      t.string :ma
      t.string :ten
      t.text :thongtintruong

      t.timestamps
    end
  end
end
