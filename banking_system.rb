module AccountType
    def type_of_acc(type,amt,month)
        if(type == "saving")
            puts "you have saving account your money will be #{amt += (amt *= (0.005 * month)) }"
        else
            puts "you have current account your money will be #{amt += (amt *= (0.001 * month))}"
        end

    end
end
class Person_Details
    @@array_of_account = []
    include AccountType
    
    attr_accessor :account_number, :name, :account_type, :amount, :month
    def initialize 
        @account_number
        @name
        @account_type
        @amount
        @month
    end

    def addaccount
        @@array_of_account.push(self)
        puts "user added successfully"
    end
    protected
    def show_all_users
        @@array_of_account.each do |var|
        puts "acc no #{var.account_number}\nname #{var.name}\n account type #{var.account_type}\n amount #{var.amount}\n month #{var.month}"
        end
    end

    def withdraw_amt(amt,acc_no)
        obj_no = 0
        @@array_of_account.each do |var|
        present_amt = @@array_of_account.fetch(obj_no.to_i)
        if(acc_no == present_amt.account_number)
            if (amt < present_amt.amount)
            present_amt.amount -= amt
            puts "withdrawan sucessfully"
            else
                puts "you have low balance"
            end
        end
        obj_no += 1
        end
        
    end

    def show_bal_via_type(acc_no,acc_month)
        puts "in show balance"
        obj_no = 0
        @@array_of_account.each do |var|
        present_obj = @@array_of_account.fetch(obj_no.to_i)
        if(acc_no == present_obj.account_number)
            Person_Details.new.type_of_acc(present_obj.account_type,present_obj.amount,acc_month)
        end
        obj_no += 1
        end
    end

    def show_current_balance(acc_no)
        obj_no = 0
        @@array_of_account.each do |var|
        present_amt = @@array_of_account.fetch(obj_no.to_i)
        if(acc_no == present_amt.account_number)
            puts "your current balance is #{present_amt.amount}"
        end
        obj_no += 1
        end
        
    end
    def deposite(acc_no,depo_amt)
        obj_no = 0
        @@array_of_account.each do |var|
        present_amt = @@array_of_account.fetch(obj_no.to_i)
        if(acc_no == present_amt.account_number) 
            present_amt.amount += depo_amt
            puts "deposited sucessfully"
        end
        obj_no += 1
        end
    end
end


class Banking_System < Person_Details
    def withdraw
        puts "enter amount you want to retrive"
        amt = gets.chomp.to_i
        puts "enter your acc no"
        acc_no = gets.chomp.to_i
        person = Person_Details.new
        person.withdraw_amt(amt,acc_no)
    end

    def show_balance
        puts "enter month you want to see your balance"
        acc_month = gets.chomp.to_i
        puts "enter your acc no"
        acc_no = gets.chomp.to_i
        person = Person_Details.new
        person.show_bal_via_type(acc_no,acc_month)        
    end

    def get_balance
        puts "enter your acc no"
        acc_no = gets.chomp.to_i
        person = Person_Details.new
        person.show_current_balance(acc_no)
    end

    def add_my_account
        banking_system = Person_Details.new
        banking_system.account_number = 1
        banking_system.name = "onkar"
        banking_system.account_type= "saving"
        banking_system.amount=2000
        banking_system.month=3
        banking_system.addaccount
        banking_system = Person_Details.new
        banking_system.account_number = 2
        banking_system.name = "omkar"
        banking_system.account_type= "current"
        banking_system.amount=2000
        banking_system.month=3
        banking_system.addaccount
        banking_system = Person_Details.new
        puts "enter your new acc no"
        accno = gets.chomp.to_i
        banking_system.account_number = accno

        puts "enter your name"
        name = gets.chomp
        banking_system.name = name
        
        puts "enter your account type"
        type = gets.chomp
        banking_system.account_type = type
        
        puts "enter amount"
        amount= gets.chomp.to_i
        banking_system.amount= amount
        banking_system.addaccount
    end
    def deposite_amt
        puts "enter your acc no"
        acc_no = gets.chomp.to_i
        puts "enter amount you want to deposite"
        depo_amt = gets.chomp.to_i
        person = Person_Details.new
        person.deposite(acc_no,depo_amt)
    end

end

banking_sys = Banking_System.new

while (1)

    puts "\n 1. add account\n 2. see current balance\n 3. show balance by month \n 4. withdraw amount\n 5. deposite amount\n press any other key to exit\n\n"
    choice = gets.chomp.to_i

case choice
when 1
    banking_sys.add_my_account
    
when 2
    banking_sys.get_balance
when 3
    banking_sys.show_balance
when 4
    banking_sys.withdraw
when 5
    banking_sys.deposite_amt
    
else
    break
end

end






    

