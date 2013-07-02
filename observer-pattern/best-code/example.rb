require './Employee.rb'
require './Payroll.rb'
require './TaxMan.rb'

employee = Employee.new('Chris', 'Rails Developer', 50000)
payroll = Payroll.new

irs = TaxMan.new




   employee.add_observer(payroll)
   employee.add_observer(irs)

   employee.salary = employee.salary * 1.05
employee = EmployeeObservalbe.new('Mike', 'Civil Engineer', 50000)
