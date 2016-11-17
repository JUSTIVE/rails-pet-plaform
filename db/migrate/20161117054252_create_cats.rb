class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string    :category
      t.string    :img_url
      
      t.timestamps null: false
    end
  end
end
