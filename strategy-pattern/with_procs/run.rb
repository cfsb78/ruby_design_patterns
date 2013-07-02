# running using Proc objects for each strategy instead of unique
# classes.  Great for quick/dirty implementation of strategy object
# if only one method is needed. If more are needed, strategy objects
# should be defined in classes.
require './Report'

#using explicit proc
HTML_FORMATTER_PROC = lambda do |context|
   puts('<html>')
   puts('<html>')
   puts ("<head><title>#{context.title}</title></head>")		
   puts ('<body>')
   context.text.each do |line|
      puts ("<p>#{line}</p>")
   end
   puts '</body>'
   puts '</html>'
end


report = Report.new &HTML_FORMATTER_PROC
report.output_report


report = Report.new do |context|
  puts("*******#{context.title} ********")
  context.text.each do |line|
     puts(line)
  end
end
report.output_report

