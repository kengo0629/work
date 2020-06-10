class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :occupation
      t.text :text
      t.text :image
      t.string :region
      t.string :email
      t.timestamps
    end
  end
end
