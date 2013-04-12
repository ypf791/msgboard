class RemoveTimestamps < ActiveRecord::Migration
	def up
		remove_column :posts, :create_time
		remove_column :posts, :last_edit
	end

	def down
		add_column :posts, :create_time, :timestamp
		add_column :posts, :last_edit, :timestamp
	end
end
