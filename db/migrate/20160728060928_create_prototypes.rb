class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string title
      t.string catch_copy
      t.string concept
      t.string user_id
      t.created_at timestamps
    end
  end
end
