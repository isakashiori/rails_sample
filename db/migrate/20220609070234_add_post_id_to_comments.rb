class AddPostIdToComments < ActiveRecord::Migration[5.2]
  def up
    add_reference :comments, :post, null:false 
  end

  def down
    remove_reference :comments, :post
  end
end
