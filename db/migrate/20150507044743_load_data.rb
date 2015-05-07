class LoadData < ActiveRecord::Migration
  def change
    User.create(name: "Jose");
    User.create(name: "Rachel G");
    User.create(name: "Helen");
    User.create(name: "Rachel L");
  end
end
