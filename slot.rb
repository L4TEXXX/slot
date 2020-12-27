puts "-------------"
puts "残りのコイン数：100"
puts "ポイント：0"
coin = 100
point = 0
puts "-------------"

loop do
    select = [20,30,40,50,"やめる"]
    puts "何コイン入れますか？"
    puts "1(20コイン) 2(30コイン) 3(40コイン) 4(50コイン)　5(やめる)"
    bet = gets.to_i
    #GAMEOVER処理
    if bet == 4
        puts "GAME OVER"
        break
    elsif coin < select[bet]
        puts "GAME OVER"
        break
    end

    num1 = rand(1..9)
    num2 = rand(1..9)
    num3 = rand(1..9)
    num4 = rand(1..9)
    num5 = rand(1..9)
    num6 = rand(1..9)
    num7 = rand(1..9)
    num8 = rand(1..9)
    num9 = rand(1..9)

    puts "エンターを３回押して数字を出そう"
    #１回目
    puts = gets
    puts "-----"
    puts "|#{num1}|||"
    puts "|#{num4}|||"
    puts "|#{num7}|||"
    puts "-----"
    #2回目
    puts = gets
    puts "------"
    puts "|#{num1}|#{num2}||" 
    puts "|#{num4}|#{num5}||"
    puts "|#{num7}|#{num6}||"
    puts "------"
    #3回目
    puts = gets
    puts "-------"
    puts "|#{num1}|#{num2}|#{num3}|"
    puts "|#{num4}|#{num5}|#{num6}|"
    puts "|#{num7}|#{num8}|#{num9}|"
    puts "-------"

    #もしくは数字がそろった場合と揃わなかった場合の処理
    if (num4==7&&num5==7&&num6==7)||(num1==7&&num==2&&num3==7)||(num7==7&&num8==8&&num9==7)||(num1==7&&num5==7&&num9==7)||(num7==7&&num5==7&&num3==7)
        puts "---------------------------"
        puts "Lucky 777!!!"
        puts "#{select[bet]*2}コイン獲得!!!"
        puts "500ポイント獲得!!!"
        puts "---------------------------"
        coin += select[bet]*3 - select[bet]
        point += 500
        puts "コイン：#{coin}"
        puts "ポイント：#{point}"
        puts "---------------------------"
    elsif (num1==num2&&num2==num3)||(num4==num5&&num5==num6)||(num7==num8&&num8==num9)||(num1==num5&&num5==num9)||(num7==num5&&num5==num3)
        puts "---------------------------"
        puts "Completed Numbers!!!"
        puts "#{select[bet]*2}コイン獲得!!!"
        puts "100ポイント獲得"
        puts "---------------------------"
        coin += select[bet]*2 - select[bet]
        point += 100
        puts "コイン：#{coin}"
        puts "ポイント：#{point}"
        puts "---------------------------"
    else
        puts "---------"
        puts "残念！もう一回挑戦しよう！"
        coin -= select[bet]
        puts "コイン：#{coin}"
        puts "ポイント：#{point}"
    end
end
