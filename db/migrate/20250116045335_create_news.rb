class CreateNews < ActiveRecord::Migration[7.1]
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.date :display_date
      t.datetime :iso_date

      t.timestamps
    end
  end
end
