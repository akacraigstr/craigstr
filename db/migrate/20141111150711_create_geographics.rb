class CreateGeographics < ActiveRecord::Migration
  def change
    create_table :geographics do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
