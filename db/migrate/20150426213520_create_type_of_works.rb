class CreateTypeOfWorks < ActiveRecord::Migration
  def change
    create_table :type_of_works do |t|
      t.string :type
    end
  end
end
