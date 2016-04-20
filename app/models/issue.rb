class Issue < ActiveRecord::Base
	has_many :links
	has_drafts
end
