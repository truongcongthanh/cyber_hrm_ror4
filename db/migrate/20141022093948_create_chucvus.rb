class CreateChucvus < ActiveRecord::Migration
  def change
    create_table :chucvus do |t|
      t.string :ma
      t.string :ten
      t.references :nhomchucvu, index: true

      t.timestamps
    end
  end
end
