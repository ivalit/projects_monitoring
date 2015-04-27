class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.belongs_to :origin, index: true
      t.belongs_to :type_of_work, index: true
      t.timestamps null: false
    end
  end
end
