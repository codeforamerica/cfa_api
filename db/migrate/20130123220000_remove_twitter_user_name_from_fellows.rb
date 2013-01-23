class RemoveTwitterUserNameFromFellows < ActiveRecord::Migration
  def up
    remove_column :fellows, :twitter_user_name
  end

  def down
    add_column :fellows, :twitter_user_name, :string
  end
end
