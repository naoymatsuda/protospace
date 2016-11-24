class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :prototype_id

      t.timestamps null: false
    end
  end
end
