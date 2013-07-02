require './Employee.rb'
require './Payroll.rb'
require './TaxMan.rb'

chris = Employee.new('Chris', 'Rails Developer', 50000)
payroll = Payroll.new

irs = TaxMan.new

chris.add_observer(payroll)
chris.add_observer(irs)

chris.salary = chris.salary * 1.05
