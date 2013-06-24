require './HTMLReport'
require './PlainTextReport'

html = HTMLReport.new
html.output_report

plain_text = PlainTextReport.new
plain_text.output_report
