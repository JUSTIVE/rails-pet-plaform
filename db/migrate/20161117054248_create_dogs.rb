class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string    :category
      t.string    :img_url

      t.timestamps null: false
    end
  end
end
