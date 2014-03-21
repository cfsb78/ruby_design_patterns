# This demonstrates a 'lazy' proxy.  The bank account is not created until
# it is needed.  To avoid forcing the responsibility of creating a bank aount
# on
# This demonstrates the use of a proxy for 'lazy' loading.  Here the BankAccount is not created until it has to be used
# A creation block is passed to the constructor to avoid forcing the responsibility of creating a BankAccount on the 
# Virtaul proxy object.
#
class BankAccountVirtualProxy

   def initialize(&create_account)
      @create_account_block = create_account
   end

    def balance
       s = subject
       return s.balance
    end

    def withdraw(amount)
       s = subject
       return s.withdraw(amount)
    end

    def deposit(amount)
       s = subject
       return s.deposit(amount)
    end

    def subject
       @subject || (@subject = @create_account_block.call)
    end
end
