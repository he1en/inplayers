class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :photo_path
      t.integer :cost

      t.timestamps
    end
  end
end
