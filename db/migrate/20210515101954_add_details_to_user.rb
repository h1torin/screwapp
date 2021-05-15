class AddDetailsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :emoji, :string
    add_column :users, :background_color, :string
  end
end
