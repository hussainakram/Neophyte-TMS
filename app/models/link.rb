class Link < ApplicationRecord
	belongs_to :resource, optional: true
end