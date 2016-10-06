class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :status
      t.string :image
      t.references :prototype_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
