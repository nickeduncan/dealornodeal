cases = []
my_case = {}
this_round = 1
money = [0.01,
1,
5,
10,
25,
50,
75,
100,
200,
300,
400,
500,
750,
1000,
5000,
10000,
25000,
50000,
75000,
100000,
200000,
300000,
400000,
500000,
750000,
1000000
]

# case shuffling
money.shuffle!
i = 0
while i < money.length
  cases << {number: (i + 1), value: money[i]}
  puts cases[i][:number]
  i += 1
end

# player chooses case
puts "\nChoose your case!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  my_case = cases[choice - 1]
  cases.delete_at(my_case[:number]-1)
  i += 1
else
  puts "Choose an available case!"
  choice = gets.chomp.to_i
end
puts "\nYour case is #{my_case[:number]}!"
puts my_case

# Round 1 turn 1
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 2
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value].to_i)
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 3
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 4
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 5
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 1
puts "\nOk, let's call the banker..."
puts "..."
puts "  ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1
# Round 2 turn 6
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 7
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 8
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 9
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 10
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 2
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1

# Round 3 turn 11
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 12
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 13
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 14
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 3
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1

# Round 4 turn 15
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 16
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 4
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1

# Round 5 turn 17
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort
# turn 18
puts "\nChoose another case..."
puts "\nCases remaining:\n"
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\n"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 5
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1

# Round 6 turn 19
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 6
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1

# Round 7 turn 20
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 7
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1

# Round 8 turn 21
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 8
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1
# Round 9 turn 22
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 9
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1
# Round 9 turn 22
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 9
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... let's continue"
end
this_round += 1
# Round 9 turn 23
i = 0
while i < cases.length
  puts cases[i][:number]
  i += 1
end
puts "\nSelect a case to eliminate!"
choice = gets.chomp.to_i
i = 0
if cases.find {|x| x[:number] == choice}
  case_choice = cases.find {|x| x[:number] == choice}
  money.delete(case_choice[:value])
  puts case_choice[:value]
  puts case_choice
  while i < cases.length
    if cases[i][:value] == case_choice[:value]
      cases.delete_at(i)
      i += 1
    else
      i += 1
    end
  end
end
puts "\nMoney remaining:"
puts money.sort

#banker call 9
puts "\nOk, let's call the banker..."
puts "..."
puts "   ..."
money_total = 0
i = 0
while i < money.length
  money_total += money[i]
  i += 1
end
money_average = money_total/money.length
bank_offer = ((money_average*this_round)/10).round
puts "\nOk..."
puts "I see..."
puts "\nThe banker offers..."
puts "$#{bank_offer}"
puts "\nDeal..."
puts" ...or no deal?"
deal_choice = gets.chomp.downcase
if deal_choice == "deal"
  puts"\nDEAL!!!"
  puts "\nYou won #{bank_offer}!"
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] <= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
elsif deal_choice == "no deal"
  puts "\nNo Deal!!\n"
  puts "\n Ok... "
  puts "\nLet's see what you had in your case..."
  puts my_case[:value]
  if my_case[:value] >= bank_offer
    puts "\nNice deal!!"
    exit
  else
    puts "\nOuch!"
    exit
  end
end
