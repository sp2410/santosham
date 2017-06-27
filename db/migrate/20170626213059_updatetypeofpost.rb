class Updatetypeofpost < ActiveRecord::Migration[5.1]
  def change
  	rename_column :posts, :type, :posttype
  end
end
