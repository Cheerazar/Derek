class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.integer       :user_id
      t.integer   :breakout_id
    end
  end
end
