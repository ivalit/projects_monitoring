class CreateTypeOfWorks < ActiveRecord::Migration
  def change
    create_table :type_of_works do |t|
      t.string :task_type
    end
  end
end
