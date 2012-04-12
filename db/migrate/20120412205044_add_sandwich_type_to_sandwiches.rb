class AddSandwichTypeToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :sandwich_type, :string
  end
end
