class CreateQuoctiches < ActiveRecord::Migration
  def change
    create_table :quoctiches do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
