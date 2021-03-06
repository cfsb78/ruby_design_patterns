# This proxy pattern simply wraps the functionality of BankAccount and adds a layer of security around each call
# The advantage of using a Proxy here is that the Proxy is specifically concerned with the seucrity aspect
# leaving the original BankAccount object to do the work of handling the account.  If different security policies
# were needed, new Proxies could be created to implement each new policy.  It would also be very easy to use 
# BankAccount without any security, by simply avoiding the Proxy altogether and using the real BankAccount object
require 'etc'

class BankAccountProtectionProxy

	def initialize(real_object, account_owner_name)
		@real_object = real_object
		@owner_name = account_owner_name
	end

	def balance
		check_access
		@real_object.balance
	end

	def withdraw(amount)
		check_access
		@real_object.withdraw(amount)
	end


	def deposit(amount)
		check_access
		@real_object.deposit(amount)
	end

	def check_access
		if Etc.getlogin != @owner_name
			raise "Illegal operation!  #{Etc.getlogin} is not the owner of this account."
		end
	end

end
