class CreateQuanlynhanuocs < ActiveRecord::Migration
  def change
    create_table :quanlynhanuocs do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
