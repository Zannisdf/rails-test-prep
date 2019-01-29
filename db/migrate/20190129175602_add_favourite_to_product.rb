class AddFavouriteToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :favourite, :boolean, default: false
  end
end
