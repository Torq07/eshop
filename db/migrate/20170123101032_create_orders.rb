class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :city
      t.string :address
      t.string :country
      t.string :total_price
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
