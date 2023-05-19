class CreatePrototyps < ActiveRecord::Migration[6.0]
  def change
    create_table :prototyps do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
