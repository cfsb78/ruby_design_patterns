# the Report class below uses a Proc object instead of an instance 
# of a Strategy object class. This provides a quick and easy way to
# implement strategy objects that only use one method.  If additional
# methods are needed, a sepeare class defining a Strategy object should be used instead.
class Report
  attr_reader :title, :text
  attr_accessor :formatter
  
  def initialize(&formatter)
     @title = 'Monthly Report'
     @text = ['Things are going', 'very, very good']
     @formatter =  formatter
  end

  def output_report
    @formatter.call(self)
  end
end

