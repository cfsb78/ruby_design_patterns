# Below is a modified version of the Employee class.  This class maintains an array
# of observers.  Each time an attribute changes in the emplpoyee class notify_observers
# is called to update interested observers of changes in the Employee's state. This
# is cleaner, because 0 or more observers can listen to the Employee's state without
# the Employee class caring/having to be updated.
#
class Employee

   attr_reader :name, :salary
   attr_accessor :title

   def initialize(name, title, salary)
      @name = name
      @title = title
      @salary = salary
      @observers = []
   end
   
   def salary=(new_salary)
      @salary = new_salary
      notify_observers
   end

   def notify_observers
      @observers.each do |observer|
         observer.update(self)
      end
   end

   def add_observer(observer)
      @observers << observer
   end

   def delete_observer(observer)
      @observers.delete(observer)
   end
end
