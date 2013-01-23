class RemoveGitHubUserNameFromFellows < ActiveRecord::Migration
  def up
    remove_column :fellows, :git_hub_user_name
  end

  def down
    add_column :fellows, :git_hub_user_name, :string
  end
end
