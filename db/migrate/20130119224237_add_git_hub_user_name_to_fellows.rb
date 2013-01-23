class AddGitHubUserNameToFellows < ActiveRecord::Migration
  def change
    add_column :fellows, :git_hub_user_name, :string
  end
end
