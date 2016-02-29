class CreateDolists < ActiveRecord::Migration
  def change
    create_table :dolists do |t|
      t.string :date
      t.string :do

      t.timestamps null: false
    end
  end
end
