require "./bank"

RSpec.describe Bank do
  it "可以領錢" do
    #Arrange
    account = Bank.new(10)
    
    #Act
    account.deposit(5)

    #Assert
    expect(account.balance).to be 15

    it "不可以存0元或是小於0元的金額"
    account = Bank.new(10)
    account.deposit(-1)
    expect(account.balance).to be 10
  end
end


