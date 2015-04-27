class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :criterion

      t.timestamps null: false
    end
  end
end
