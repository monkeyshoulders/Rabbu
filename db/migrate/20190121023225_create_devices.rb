class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :type
      t.boolean :active

      t.timestamps
    end
  end
end
