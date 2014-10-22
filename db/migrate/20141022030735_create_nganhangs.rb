class CreateNganhangs < ActiveRecord::Migration
  def change
    create_table :nganhangs do |t|
      t.string :ma
      t.string :ten
      t.text :thongtin

      t.timestamps
    end
  end
end
