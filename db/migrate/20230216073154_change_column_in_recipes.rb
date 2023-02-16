class ChangeColumnInRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :email, :desciption
    change_column :recipes, :desciption, :text
  end
end
