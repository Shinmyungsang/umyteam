class CreateLoves < ActiveRecord::Migration
  def change
    create_table :loves do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
