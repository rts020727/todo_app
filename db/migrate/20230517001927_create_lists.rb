class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.integer  :category_id
      t.text  :content

      t.timestamps
    end
  end
end
