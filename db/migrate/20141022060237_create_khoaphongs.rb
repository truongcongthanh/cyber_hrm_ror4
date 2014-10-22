class CreateKhoaphongs < ActiveRecord::Migration
  def change
    create_table :khoaphongs do |t|
      t.string :ma
      t.string :ten
      t.references :nhomkhoaphong, index: true

      t.timestamps
    end
  end
end
