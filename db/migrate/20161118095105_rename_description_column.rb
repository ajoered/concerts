class RenameDescriptionColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :concerts, :decription, :description 
  end
end
