class User < ApplicationRecord
  validates :username, presence: true
  validates :full_name, presence: true
  validates :menu_code, presence: true
  validates :custom_settings_form_code, presence: true
  validates :dashboard_code, presence: true
end

#Comment
