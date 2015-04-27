class CreateDevelopmentProgress < ActiveRecord::Migration
  def change
    create_table :development_progresses do |t|
      t.integer :progress
      t.belongs_to :project, index: true
      t.timestamps null: false
    end
  end
end
