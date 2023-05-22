# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email,                 null: false, unique:true
      t.string :encrypted_password,     null: false
      t.string :name,                   null: false
      t.text   :profile,                null: false
      t.text   :occupation,             null: false
      t.text   :position,               null: false
      t.timestamps null: false
    end
  end
end
