module ApplicationHelper

	#Return a title on a per-page basis.
	def title
		base_title = "Adelaide's App"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag("logo.jpg", :alt => "Payment App", :class => "round", :style => "width:225px;height:70px")
	end
end
