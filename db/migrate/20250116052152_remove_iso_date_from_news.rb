class RemoveIsoDateFromNews < ActiveRecord::Migration[7.1]
  def change
    remove_column :news, :iso_date, :datetime
  end
end
