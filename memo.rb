require "csv"

puts "1(新規でメモを作成)2(既存のメモを編集する)"
memo_type = gets.to_i
if memo_type == 1 then
  puts "ファイル名を入力してください。"
  memo_title = gets.chomp
  p "ファイル名は#{memo_title}となりました。"
  p "メモしたい内容を記入してくだい。"
  p "Ctrl + D で保存されます。"
  CSV.open("#{memo_title}.csv",'w') do |csv|
    memo = readlines
    csv << memo
  end
  
  elsif memo_type == 2 then
    puts "編集したいファイルを入力してください"
    memo_edit = gets.chomp
    p "編集中のファイルは#{memo_edit}です。"
    p "編集したい内容を入力ください"
    p "Ctrl + D で保存されます。"
    CSV.open("#{memo_edit}",'a') do |csv|
      memo = readlines
      csv << memo
    end
 else
   puts "1か2をお選びください"
end