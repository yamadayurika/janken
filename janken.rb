puts "じゃんけん・・・"

def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)" 
  
  player_hand = gets.to_i
  pc_hand = rand(0..2)

if !((player_hand ==0)||(player_hand ==1)||(player_hand ==2))
  puts "---------------------"
  puts "またあそんでね！"
  puts "次のゲームはこちら！"
  puts "---------------------"
  return true


else
  jankens = ["グー","チョキ","パー"]
  puts "ホイ！"
  puts "---------------------"
  puts "あなた:#{jankens[player_hand]}を出しました\n相手:#{jankens[pc_hand]}を出しました"
  puts "---------------------"

  if player_hand == pc_hand
   puts "あいこで"
   return true
   
   
  elsif(player_hand == 0 && pc_hand == 1)||(player_hand == 1 && pc_hand == 2)||(player_hand == 2 && pc_hand == 0)
     puts "あっちむいて・・・"
     puts "0(上) 1(下) 2(左) 3(右)"
  
  player_hoi = gets.to_i
  pc_hoi = rand(0..3)
  
  hoi = ["上","下","左","右"]
  puts "ほい！"
  puts "---------------------"
  puts "あなた:#{hoi[player_hoi]}を出しました\n相手:#{hoi[pc_hoi]}を出しました"
  puts "---------------------"
  
   if player_hoi == pc_hoi
   puts "あなたの勝ちです！"
   return true
   
   else
     return true
   
   end
   


  elsif(player_hand == 0 && pc_hand == 2)||(player_hand == 1 && pc_hand == 0)||(player_hand == 2 && pc_hand == 1)
     puts "あっちむいて・・・"
     puts "0(上) 1(下) 2(左) 3(右)"
  
  player_hoi = gets.to_i
  pc_hoi = rand(0..3)
  
  hoi = ["上","下","左","右"]
  puts "ほい！"
  puts "---------------------"
  puts "あなた:#{hoi[player_hoi]}を出しました\n相手:#{hoi[pc_hoi]}を出しました"
  puts "---------------------"

   if player_hoi == pc_hoi
   puts "あなたの負けです！"
   return true
   
   else
     return true
     
   end
  end
end
end

next_game = true

while next_game
  next_game = janken
end