module ApplicationHelper
	def sample_helper
		"<p>My Little Helper</>".html_safe
	end

	def login_helper style
		if current_user.is_a?(GuestUser)
			(link_to "Register", new_user_registration_path, class: style) +
	     	(link_to "Login", new_user_session_path, class: style)
    	else
	     	(link_to "Log Out", destroy_user_session_path, data: { turbo_method: :delete }, class: style)
    	end
	end

	def source_helper(layout_name)
		if session[:source] 
    		greeting = "Thanks for visiting me from #{session[:source]}"
    		content_tag(:p, greeting, class: "source-greeting")
    	end
	end
end
