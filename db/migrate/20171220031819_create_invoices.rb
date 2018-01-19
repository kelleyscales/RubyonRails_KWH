class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.decimal :cost
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
