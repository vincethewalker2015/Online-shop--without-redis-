class CreateStockists < ActiveRecord::Migration[5.2]
  def change
    create_table :stockists do |t|
      t.string   :name
      t.string   :string
      t.string   :address
      t.string   :website

      t.timestamps
    end
  end
end
