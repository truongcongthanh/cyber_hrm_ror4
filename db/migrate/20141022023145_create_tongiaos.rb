class CreateTongiaos < ActiveRecord::Migration
  def change
    create_table :tongiaos do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
