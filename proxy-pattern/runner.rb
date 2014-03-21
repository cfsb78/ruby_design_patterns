require './BankAccountProtectionProxy'
require './BankAccount'

bankAccountProxy = BankAccountProtectionProxy.new(BankAccount.new,'chris')

puts bankAccountProxy.balance

puts bankAccountProxy.deposit(100)
puts bankAccountProxy.withdraw(50)

