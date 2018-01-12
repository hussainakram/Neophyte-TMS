class Resource < ApplicationRecord
	belongs_to :challenge
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	has_attached_file :document
	validates_attachment :document, :content_type => [ :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) ]

	#YT_LINK_FORMAT = /^(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/

  	# validates :link  # , format: YT_LINK_FORMAT

  	# validates_format_of :link, :with => URI::regexp(%w(http https youtube))
  


end
