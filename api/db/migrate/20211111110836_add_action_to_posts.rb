class AddActionToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :action, :integer
  end
end
