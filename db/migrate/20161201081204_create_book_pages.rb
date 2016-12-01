class CreateBookPages < ActiveRecord::Migration
  tag :predeploy
  
  def change
    create_table :book_pages do |t|
      t.string :title
      t.text :html

      t.timestamps
    end
  end
end
