class CreateNames < ActiveRecord::Migration[5.1]
  def change
    create_table :names do |t|
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
