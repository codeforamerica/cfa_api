class AddGithubToFellows < ActiveRecord::Migration
  def change
    add_column :fellows, :github, :string
  end
end
