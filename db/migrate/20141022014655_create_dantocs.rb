class CreateDantocs < ActiveRecord::Migration
  def change
    create_table :dantocs do |t|
      t.string :ma
      t.string :ten

      t.timestamps
    end
  end
end
