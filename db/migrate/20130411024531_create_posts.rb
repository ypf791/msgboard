class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :msg
      t.timestamp :create_time
      t.timestamp :last_edit

      t.timestamps
    end
  end
end
