class AddTwitterUserNameToFellows < ActiveRecord::Migration
  def change
    add_column :fellows, :twitter_user_name, :string
  end
end
