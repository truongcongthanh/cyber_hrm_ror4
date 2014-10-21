class CreatePhuongxas < ActiveRecord::Migration
  def change
    create_table :phuongxas do |t|
      t.string :ma
      t.string :ten
      t.references :quanhuyen, index: true
      t.string :viettat

      t.timestamps
    end
  end
end
