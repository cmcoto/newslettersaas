class Link < ActiveRecord::Base
	validates :title, :presence => true
	validates :url, :presence =>true

	belongs_to :user
	belongs_to :issue
end
