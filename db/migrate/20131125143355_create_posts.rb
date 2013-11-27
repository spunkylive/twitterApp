class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :message
      t.boolean :is_visible, :default => false
      t.integer :user_id

      t.timestamps
    end
  end
end
