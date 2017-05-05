class CreateLeisures < ActiveRecord::Migration
  def change
    create_table :leisures do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
