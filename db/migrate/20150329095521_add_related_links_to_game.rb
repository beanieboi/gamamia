class AddRelatedLinksToGame < ActiveRecord::Migration
  def change
    add_column :games, :related_links, :text, array: true, default: []
  end
end
