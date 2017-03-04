class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :prototype
      t.text :comment
      t.references :user
      t.timestamps
    end
  end
end
