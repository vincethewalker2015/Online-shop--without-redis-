class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.string :designer_name

      t.timestamps
    end
  end
end
