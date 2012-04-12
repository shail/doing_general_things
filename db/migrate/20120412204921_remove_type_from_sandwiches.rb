class RemoveTypeFromSandwiches < ActiveRecord::Migration
  def up
  	remove_column :sandwiches, :type
  end

  def down
  	add_column :sandwiches, :type, :string
  end
end
