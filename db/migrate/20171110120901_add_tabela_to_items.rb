class AddTabelaToItems < ActiveRecord::Migration
  def change
    add_column :items, :picture, :string
  end
end
