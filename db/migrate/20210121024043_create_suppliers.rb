class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end

supplier = Supplier.new({ name: "Black Diamond ", email: "BlackDiamond@gmail.com", phone_number: 433 })
supplier.save
