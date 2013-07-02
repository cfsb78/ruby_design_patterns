# simple employee class. salary= is defined to update payroll when employees salary
# changes.  Problem is Employee class code is specifically coded to inform payroll of its
# state. If other classes need to be informed of employee's state, Employee class would
# need to be updated for each instance.  This is bad design because its is the other 
# classes driving changes to the Employee class. This the type of problem the observer
# pattern can sovle
class Employee
   attr_reader :name
   attr_accessor :title

   def initialize(name, title, salary, payroll)
      @name = name
      @title = title
      @salary = salary
      @payroll = payroll
   end
   
   def salary=(new_salary)
      @salary = new_salary
      @payroll.update(self)
   end
end
