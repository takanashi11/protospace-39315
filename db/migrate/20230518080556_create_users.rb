class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email ,                 null: false, unique:true
      t.string :encrypted_passwaord,    null: false
      t.string :name,                   null: false
      t.text   :profile,                null: false
      t.text   :occupation,             null: false
      t.text   :position,               null: false
      t.timestamps
    end
  end
end
