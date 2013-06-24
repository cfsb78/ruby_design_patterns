# HTMLReport is a subclass of Report and provide appropriate impelementation
# for generating a report in HTML format.

require './report'

class HTMLReport < Report
	def output_start
		puts '<html>'
	end

	def output_header
		puts "<head><title>#{@title}</title></head>"		
	end

	def output_body_start
		puts '<body>'
	end
	
	def output_body_end
		puts '</body>'
	end

	def output_line(line)
		puts "<p>#{line}</p>"
	end
	def output_end
		puts '</html>'
	end

end
