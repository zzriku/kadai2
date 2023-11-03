class ChangeColumnNameInFavorites < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :bookd_id, :book_id
  end
end
