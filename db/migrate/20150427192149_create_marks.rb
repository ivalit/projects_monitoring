class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :mark
      t.belongs_to :project, index: true
      t.belongs_to :criterion, index: true
      t.timestamps null: false
    end
  end
end
