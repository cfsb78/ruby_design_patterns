
class HTMLFormatter

   def output_report(context)
      puts('<html>')
      puts ("<head><title>#{context.title}</title></head>")		
      puts ('<body>')
      context.text.each do |line|
         puts ("<p>#{line}</p>")
      end
      puts '</body>'
      puts '</html>'
   end
end
