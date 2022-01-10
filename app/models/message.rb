class Message < ApplicationRecord
  validates :direction, presence: true
  validates :username, presence: true
  validates :message_type, presence: true
  validates :body, presence: true
  validates :composed_at, presence: true
  validates :platform_received_at, presence: true
end
