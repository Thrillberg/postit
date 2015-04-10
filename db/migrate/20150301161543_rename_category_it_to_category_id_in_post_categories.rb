class RenameCategoryItToCategoryIdInPostCategories < ActiveRecord::Migration
  def change
    rename_column :post_categories, :category_it, :category_id
  end
end
