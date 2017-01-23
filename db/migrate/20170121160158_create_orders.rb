class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
    	
    	t.string :city,              null: false
      t.string :address,              null: false
      t.string :country,      				null: false
      t.integer :total_price      
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
