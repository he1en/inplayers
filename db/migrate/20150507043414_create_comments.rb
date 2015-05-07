class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :activity_id
      t.datetime :date_time
      t.text :text
      t.timestamps
    end
  end
end
