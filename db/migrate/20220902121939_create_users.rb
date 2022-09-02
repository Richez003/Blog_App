class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :bio
      t.string :name
      t.integer :post_counter
      t.string :photo

      t.timestamps
    end
  end
end
