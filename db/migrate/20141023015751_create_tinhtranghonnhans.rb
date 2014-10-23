class CreateTinhtranghonnhans < ActiveRecord::Migration
  def change
    create_table :tinhtranghonnhans do |t|
      t.string :ten

      t.timestamps
    end
  end
end
