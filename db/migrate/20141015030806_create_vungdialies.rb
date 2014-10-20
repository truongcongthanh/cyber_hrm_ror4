class CreateVungdialies < ActiveRecord::Migration
  def change
    create_table :vungdialies do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
