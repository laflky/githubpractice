class Customer
	attr_accessor :name, :location 
	def initialize(name, location)
		@name = name
		@location = location
	end
end

class Account
	attr_reader :account_number, :balance
	attr_accessor :customer, :acct_type

	def initialize(customer, balance, account_number, acct_type)
		@customer = customer
		@balance = balance
		@account_number = account_number
		@acct_type = acct_type
	end

	def deposit
		puts "How much would you like to deposit?"
		print "$"
		amount = gets.chomp.to_f
		@balance += amount
		puts "your new balance is $#{balance}"


	end

	def withdrawal
		puts "how much would you like to withdrawal?"
		print "$"
		amount = gets.chomp.to_f

		if @balance < amount 
		   @balance -= (amount + 25)
		else
			@balance -= amount
		end
		puts "your new balance is $#{balance}" 
	end
end















