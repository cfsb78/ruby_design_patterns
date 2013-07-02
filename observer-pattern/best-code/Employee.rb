# Below the Employee class has been modified to use the generic implementation of the 
# Subject module 
require './Subject.rb'
class Employee
   include Subject
  
   attr_reader :name, :salary
   attr_accessor :title

   def initialize(name, title, salary)
      super()
      @name = name
      @title = title
      @salary = salary
   end
   
   def salary=(new_salary)
      @salary = new_salary
      notify_observers
   end


end

# the class below is identical to the Employee class, only it is using Ruby's default
# Observable object
#
# require 'observer'
# class EmployeeObservable
#    
#    include Observable
#   
#    attr_reader :name, :salary
#    attr_accessor :title
# 
#    def initialize(name, title, salary)
#       super()
#       @name = name
#       @title = title
#       @salary = salary
#    end
#    
#    def salary=(new_salary)
#       @salary = new_salary
#       changed  # required, cuts down on redundant notifcations by letting Observable
#                # know that the object's state has indeed changed
#       notify_observers(self)
#    end
# 
# end
