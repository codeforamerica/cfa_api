class CreateFellows < ActiveRecord::Migration
  def change
    create_table :fellows do |t|
      t.string :name
      t.text :headshot_url
      t.text :bio
      t.string :team

      t.timestamps
    end
  end
end
