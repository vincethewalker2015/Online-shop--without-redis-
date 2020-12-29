class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string   :image
      t.integer  :category_id, default: 4

      t.timestamps
    end
  end
end
