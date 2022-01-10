class CreateLoads < ActiveRecord::Migration[7.0]
  def change
    create_table :loads, {id: false} do |t|
      t.string :id
      t.string :display_identifier
      t.integer :sort
      t.string :order_number
      t.string :load_status
      t.string :load_status_label
      t.boolean :active
      t.boolean :current

      t.timestamps
    end
  end
end
