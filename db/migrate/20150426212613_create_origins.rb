class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :source
      t.string :curator

      t.timestamps null: false
    end
  end
end
