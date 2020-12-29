class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string   :name
      t.string   :description
      t.float    :price
      t.string   :image
      t.integer  :category_id,    default: 1
      t.integer  :stock_quantity
      t.string   :designer
      t.integer  :designer_id,    default: 1

      t.timestamps
    end
  end
end
