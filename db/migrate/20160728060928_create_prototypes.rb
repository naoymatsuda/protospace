class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catch_copy
      t.string :concept
      t.references :user_id
      t.timestamps
    end
  end
end
