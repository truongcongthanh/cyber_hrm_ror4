class CreateLyluanchinhtris < ActiveRecord::Migration
  def change
    create_table :lyluanchinhtris do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
