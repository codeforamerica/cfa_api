class AddTwitterToFellows < ActiveRecord::Migration
  def change
    add_column :fellows, :twitter, :string
  end
end
