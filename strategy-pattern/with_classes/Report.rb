# the Report class has been modified to delegate all responsibility to its formatter object
# It passes an instance of itself to the formatter for data sharing.
class Report
  attr_reader :title, :text
  attr_accessor :formatter
  
  def initialize(formatter)
     @title = 'Monthly Report'
     @text = ['Things are going', 'very, very good']
     @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end
end

