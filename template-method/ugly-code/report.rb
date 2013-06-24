# Very ugly implementation of a report generator sample class
# Problem is that if we decide to add more than just two formats
# for the report, we will have a mess of if/elsif conditions for 
# each report.  This code violating a guiding principle for design
# patterns: 
# *** 'Don't mix code that changes with code that doesn't change' ***


class Report
	def initialize
		@title = 'Monthly Report'
		@text = ['Things are going', 'very, very good']
	end

	def output_report(format)
		if format == :plain
			puts "*** @{title} ***"
		elsif format == :html
			puts '<html>'
			puts '  <head> <title>#{@title} </title></head>'
			puts '  <body>'
		else
			raise "Unknown format: #{format}"
		end

		@text.each do |line|
			if format == :plain
				puts line
			else
				puts "	<p>#{line} </p>"
			end
		end
		if format == :html
			puts "</body>"
			puts "</html>"
		end
	end
end
