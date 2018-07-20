module ApplicationHelper
	#it is goin to return full title on each pate
	def full_title(page_title = '')
		base_title = 'Ruby on Rails Tutorial Sample App'
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end
end
