require 'rspec'
require './BankAccountProtectionProxy'
require 'etc'

describe BankAccountProtectionProxy do

   describe "for owner name matching current user" do
      before do
         @fake_account = double()   
         @owner = Etc.getlogin
         @proxy = BankAccountProtectionProxy.new(@fake_account, @owner)
      end


      it "should return bank account's balance" do
         expect(@fake_account).to receive(:balance)
         @proxy.balance
      end

      it "should call bank account's withdraw method" do
         expect(@fake_account).to receive(:withdraw).with(10)
         @proxy.withdraw(10)
      end


      it "should call bank account's deposit method" do
         expect(@fake_account).to receive(:deposit).with(20)
         @proxy.deposit(20)
      end

   end
  
   describe "for user who isn't account owner" do
      before do
         @fake_account = double()   
         @proxy = BankAccountProtectionProxy.new(@fake_account, "some_other_user")
      end


      it "should not call bank account's balance and raise error" do
         expect(@fake_account).to_not receive(:balance)
         expect{@proxy.balance}.to raise_error
      end

      it "should call not bank account's withdraw method and raise error" do
         expect(@fake_account).to_not receive(:withdraw)
         expect{@proxy.withdraw(1)}.to raise_error
      end


      it "should not call bank account's deposit method and raise error" do
         expect(@fake_account).to_not receive(:deposit)
         expect{@proxy.withdraw(2)}.to raise_error
      end

   end

end

