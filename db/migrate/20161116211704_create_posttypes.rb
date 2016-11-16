class CreatePosttypes < ActiveRecord::Migration
  def change
    create_table :posttypes do |t|
      t.string  :name
      t.string  :en
      t.timestamps null: false
    end
  end
end
