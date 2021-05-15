class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.boolean :hide_user, default: false
      t.text :content
      t.references :category, null: false, foreign_key: true
      t.boolean :hide_content, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
