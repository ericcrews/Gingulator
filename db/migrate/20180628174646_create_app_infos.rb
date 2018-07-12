class CreateAppInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :app_infos do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :hometown, null: false
      t.string :email, unique: true
      t.string :phone, unique: true
      t.string :twitter_handle, unique: true
      t.string :university
      t.string :field
      t.string :phrase
      t.string :developer_type
      t.string :why_startup
      t.string :fun_facts
	  t.string :resume
      t.decimal :gpa

      t.timestamps
    end
  end
end
