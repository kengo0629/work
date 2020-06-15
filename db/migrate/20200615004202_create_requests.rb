class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.text :text
      t.text :image
      t.integer :user_id
      t.timestamps
    end
  end
end
