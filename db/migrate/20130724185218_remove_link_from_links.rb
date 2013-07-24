class RemoveLinkFromLinks < ActiveRecord::Migration
  def up
    remove_column :links, :link
  end

  def down
    add_column :links, :link, :string
  end
end
