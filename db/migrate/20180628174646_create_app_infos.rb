class CreateAppInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :app_infos do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :hometown, null: false
      t.string :email, null: false, unique: true
      t.string :phone, null: false, unique: true
      t.string :twitter_handle, null: false, unique: true
      t.string :university, null: false
      t.string :field, null: false
      t.string :phrase, null: false
      t.string :developer_type, null: false
      t.string :why_startup, null: false
      t.string :fun_facts, null: false
      t.decimal :gpa, null: false

      t.timestamps
    end
  end
end
