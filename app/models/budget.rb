class Budget
  attr_accessor :total_balance, :movements, :total_incomes, :total_expenses
  
  def initialize
    @total_balance=0
    @total_incomes=0
    @total_expenses=0
    @movements=[]
  end
  
  def calculate_budget(movements)
   movements.each do |m| 
     if m.mov_class == "I"
       @total_balance += m.amount
       @total_incomes += m.amount
     else
       @total_balance -= m.amount
       @total_expenses += m.amount
     end
   end
 end
    
end