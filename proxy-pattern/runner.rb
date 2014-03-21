require './BankAccountProtectionProxy'
require './BankAccountVirtualProxy'
require './BankAccount'

bankAccountProxy = BankAccountProtectionProxy.new(BankAccount.new,'chris')

puts bankAccountProxy.balance

puts bankAccountProxy.deposit(100)
puts bankAccountProxy.withdraw(50)

accountOfTen = BankAccountVirtualProxy.new { BankAccount.new(10) }
puts accountOfTen.balance
