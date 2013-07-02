# below is a generic module to define the subject class behavior for the Observer pattern
# this module is generic enough that any subject object should be able to use it to 
# incorporate the observer pattern
# (for illustation only, should really use Observable in Ruby library)
module Subject

   def initialize
      @observers = []
   end

   def add_observer(observer)
      @observers << observer
   end

   def remove_observer(observer)
      @observers.delete(observer)
   end

   def notify_observers
      @observers.each do |observer|
         observer.update(self)
      end
   end
end
