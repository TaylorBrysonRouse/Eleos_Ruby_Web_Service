class Load < ApplicationRecord
  validates :id, presence: true
  validates :display_identifier, presence: true
  validates :sort, presence: true
  validates :order_number, presence: true
  validates :load_status, presence: true
  validates :load_status_label, presence: true
  validates :active, presence: true
  validates :current, presence: true
end
