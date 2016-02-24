class Budget
  attr_accessor :total_balance, :movements
  
  def initialize
    @total_balance=0
    @movements=[]
  end
  
  def calculate_budget(movements)
   movements.each do |m| 
     if m.mov_class == "I"
       @total_balance = @total_balance + m.amount
     else
       @total_balance = @total_balance - m.amount
     end
   end
 end
    
end