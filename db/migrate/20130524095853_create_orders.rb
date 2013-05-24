class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :postcode
      t.string :email
      t.string :strip_customer_token
      t.string :strip_card_token

      t.timestamps
    end
  end
end
