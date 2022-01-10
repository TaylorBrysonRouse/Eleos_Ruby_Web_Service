class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :menu_code
      t.string :custom_settings_form_code
      t.string :dashboard_code

      t.timestamps
    end
  end
end
