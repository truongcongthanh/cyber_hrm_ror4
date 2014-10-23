class CreateGioitinhs < ActiveRecord::Migration
  def change
    create_table :gioitinhs do |t|
      t.string :ten

      t.timestamps
    end
  end
end
