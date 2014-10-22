class CreateBenhviens < ActiveRecord::Migration
  def change
    create_table :benhviens do |t|
      t.string :ma
      t.string :ten
      t.string :diachi
      t.string :dienthoai

      t.timestamps
    end
  end
end
