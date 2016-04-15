class AddIssueToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :issue, index: true, foreign_key: true
  end
end
