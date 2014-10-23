class CreateNganhdaotaos < ActiveRecord::Migration
  def change
    create_table :nganhdaotaos do |t|
      t.string :ma
      t.string :ten
      t.references :nhombangcap, index: true

      t.timestamps
    end
  end
end
