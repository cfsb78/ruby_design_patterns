# To correct the ugly code in report-ugly.rb, we should seperate
# the basic flow of the report that will remain constant regardless
# of the format into an abstract base class. The details of each step
# will be left for the format-specific subclass to handle.
#
# Flow of report can be defined as:
# - Output header information
# - Output title
# - Output each line of report
# - Output any required footer for format

class Report
	def initialize
		@title = 'Monthly Report'
		@text = ['Things are going', 'very, very good']
	end

	def output_report
		output_start
		output_header
		output_body_start
		output_body
		output_body_end
		output_end
	end

	def output_body
		@text.each do |line|
			output_line line
		end
	end

	def output_start
		raise 'Called abstract method: output_start'
	end

	def output_header
		raise 'Called abstract method: output_header'
	end
	def output_body_start
		raise 'Called abstract method: output_body_start'
	end
	def output_body_end
		raise 'Called abstract method: output_body_end'
	end
	def output_line(line)
		raise 'Called abstract method: output_line'
	end
	def output_end
		raise 'Called abstract method: output_end'
	end

end

