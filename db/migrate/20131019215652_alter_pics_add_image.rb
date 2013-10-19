class AlterPicsAddImage < ActiveRecord::Migration
  def up
  		add_column :pics, :image, :string
  end

  def down
  	#hopefully, if all goes well, this will never be executed
  	remove_column :pics, :image
  end
end
