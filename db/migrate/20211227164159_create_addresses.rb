class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :number
      t.text :street
      t.text :colony
      t.integer :cp
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
