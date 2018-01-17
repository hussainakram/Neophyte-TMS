module ResourcesHelper
	def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe,'', src: "//www.youtube.com/embed/#{youtube_id}", width: 1100,
   height: 500, frameborder: 5)
  end
end
