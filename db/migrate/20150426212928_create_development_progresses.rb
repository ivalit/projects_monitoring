class CreateDevelopmentProgresses < ActiveRecord::Migration
  def change
    create_table :development_progresses do |t|
      t.integer :progress

      t.timestamps null: false
    end
  end
end
