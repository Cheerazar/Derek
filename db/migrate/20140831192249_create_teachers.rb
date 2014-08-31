class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.references :session
      t.references :instructor
    end
  end
end
