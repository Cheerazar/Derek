class CreateBreakouts < ActiveRecord::Migration
  def change
    create_table :breakouts do |t|
      t.string :category
      t.string :title
      t.text :body
      t.integer :user_id
      t.string :location
      t.datetime :time
      t.string :request_type
      t.timestamps
    end
  end
end
