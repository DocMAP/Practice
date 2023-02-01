module SetBrowserTitle
	extend ActiveSupport::Concern

	included do
		before_action :set_browser_title
	end

	def set_browser_title
		@browser_title = "Mark's Practice App | My Portfolio"
		@seo_keywords = "Mark Popwell Portfolio Rails"
	end
end