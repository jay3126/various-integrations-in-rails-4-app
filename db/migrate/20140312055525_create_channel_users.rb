class CreateChannelUsers < ActiveRecord::Migration
	def change
		create_table :channel_users do |t|
			t.integer :channel_id
			t.integer :user_id

			t.timestamps
		end
	end
end
