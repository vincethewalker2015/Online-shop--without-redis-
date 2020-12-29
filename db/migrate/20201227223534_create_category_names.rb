class CreateCategoryNames < ActiveRecord::Migration[5.2]
  def change
    create_table :category_names do |t|

      t.timestamps
    end
  end
end
