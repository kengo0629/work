class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :job
      t.text :text
      t.text :image
      t.string :region
      t.timestamps
    end
  end
end
