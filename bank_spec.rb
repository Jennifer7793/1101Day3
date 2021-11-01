require "./bank"

RSpec.describe Bank do
  Content "存錢功能" do
    it "可以存錢" do
      #Arrange
      account = Bank.new(10)
      
      #Act
      account.deposit(5)

      #Assert
      expect(account.balance).to be 15
    end

    #   it "不可以存0元或是小於0元的金額" do
    #   account = Bank.new(10)
    #   expect { account.deposit(-5) }. to raise_exception BankError
    # end
      it "不能領負的錢" do
        account = Bank.new(10)
        expect { account.withdraw(-3) }.to raise_exception BankError
    end
  end
end

it "不能領超過餘額的錢" do
  account = Bank.new(10)
  expect { account.withdraw(20) }.to raise_exception BankError
end

class Bank

    def initialize(money)
      @money = money
    end
  
    def withdraw(amount)
      if 
        amount <= 0
        raise BankError.new("Amount must be greater than zero")
        amount > money
        raise BankError.new("You have not enough amount")
      end
  
      def balance
        @money
      end
    end