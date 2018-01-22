class Link < ApplicationRecord
	belongs_to :resource, optional: true
	

	validates_format_of :link, :with => /\A(https?\:\/\/)?(www\.youtube\.com|youtu\.?be)\/.+\Z/i
end
