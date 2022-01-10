class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :direction
      t.string :username
      t.string :message_type
      t.string :body
      t.string :composed_at
      t.string :platform_received_at

      t.timestamps
    end
  end
end
