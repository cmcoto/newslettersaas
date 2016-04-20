class AddDraftsToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :draft_id, :integer
    add_column :issues, :published_at, :timestamp
    add_column :issues, :trashed_at, :timestamp
  end
end
