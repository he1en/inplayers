class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.integer :activity_id
      t.integer :interest_level
      
      t.timestamps
    end
  end
end
