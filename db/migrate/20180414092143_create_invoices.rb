class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :amount
      t.boolean :paid

      t.timestamps
    end
  end
end
