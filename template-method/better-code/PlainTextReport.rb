# PlainTextReport is a subclass of Report and provide appropriate impelementation
# for generating a report in Plain text format.

require './report.rb'

class PlainTextReport < Report
	def output_start
	end

	def output_header
		puts "*** @{title} ***"
	end

	def output_body_start
	end
	
	def output_body_end
	end

	def output_line(line)
		puts line
	end
	def output_end
	end

end
