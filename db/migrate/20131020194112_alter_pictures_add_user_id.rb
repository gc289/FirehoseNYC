class AlterPicturesAddUserId < ActiveRecord::Migration
  def up
  	# I want to add the user_id column to the pics table
  	add_column :pics, :user_id, :integer
  	add_index :pics, :user_id
  	# ids are always integers in postgresql
  end

  def down
  	#here is how to undo what I just did above - allows you to rollback database to previous state
  	remove_column :pics, :user_id

  end
end
