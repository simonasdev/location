class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
