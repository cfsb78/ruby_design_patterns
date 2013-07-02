# below is the plain text formatter object used in the strategy design pattern. This is refactored
# code from the template pattern / report example, but does not use inheritance. Notice, 
# the output_report method takes an instance of the context class to access data for the
# report.
class PlainTextFormatter
	def output_report(context)
           puts "*** #{context.title} ***"
           context.text.each do |line|
              puts(line)
           end
        end
end
