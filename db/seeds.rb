teams = [
  {name: '横浜F・マリノス', stadium_name: '日産スタジアム'},
  {name: '北海道コンサドーレ札幌', stadium_name: '札幌ドーム'},
  {name: '鹿島アントラーズ', stadium_name: '茨城県立カシマサッカースタジアム'},
  {name: '浦和レッズ', stadium_name: '埼玉スタジアム2002'},
  {name: '柏レイソル', stadium_name: '三協フロンテア柏スタジアム'},
  {name: 'FC東京', stadium_name: '味の素スタジアム'},
  {name: '川崎フロンターレ', stadium_name: '等々力陸上競技場'},
  {name: '横浜FC', stadium_name: 'ニッパツ三ツ沢球技場'},
  {name: '湘南ベルマーレ', stadium_name: 'レモンガススタジアム平塚'},
  {name: 'アルビレックス新潟', stadium_name: 'デンカビッグスワンスタジアム'},
  {name: '名古屋グランパス', stadium_name: '豊田スタジアム'},
  {name: '京都サンガF.C.', stadium_name: 'サンガスタジアム by KYOCERA'},
  {name: 'ガンバ大阪', stadium_name: 'パナソニックスタジアム吹田'},
  {name: 'セレッソ大阪', stadium_name: 'ヨドコウ桜スタジアム'},
  {name: 'ヴィッセル神戸', stadium_name: 'ノエビアスタジアム神戸'},
  {name: 'サンフレッチェ広島', stadium_name: 'エディオンスタジアム広島'},
  {name: 'アビスパ福岡', stadium_name: 'ベスト電器スタジアム'},
  {name: 'サガン鳥栖', stadium_name: '駅前不動産スタジアム'}
]

teams.each do |team|
  Team.create(
    name: team[:name], 
    stadium_name: team[:stadium_name], 
    logo: File.open(Rails.root.join('test', 'fixtures', 'teams', "#{team[:name]}.png"))
  )
end  

Match.create(home_team_id: 2, away_team_id: 4,  start_date_time: Time.zone.local(2023, 12, 3, 13, 00, 00) , price: 4500)
Match.create(home_team_id: 3, away_team_id: 8,  start_date_time: Time.zone.local(2023, 12, 3, 13, 00, 00) , price: 2500)
Match.create(home_team_id: 9, away_team_id: 6,  start_date_time: Time.zone.local(2023, 12, 3, 13, 00, 00) , price: 4500)
Match.create(home_team_id: 10, away_team_id: 14,  start_date_time: Time.zone.local(2023, 12, 3, 13, 00, 00) , price: 2500)
Match.create(home_team_id: 11, away_team_id: 5,  start_date_time: Time.zone.local(2023, 12, 3, 13, 00, 00) , price: 4500)
Match.create(home_team_id: 12, away_team_id: 1,  start_date_time: Time.zone.local(2023, 12, 3, 19, 00, 00) , price: 2500)
Match.create(home_team_id: 13, away_team_id: 15,  start_date_time: Time.zone.local(2023, 12, 3, 19, 00, 00) , price: 2500)
Match.create(home_team_id: 17, away_team_id: 16,  start_date_time: Time.zone.local(2023, 12, 3, 19, 00, 00) , price: 4500)
Match.create(home_team_id: 7, away_team_id: 18,  start_date_time: Time.zone.local(2023, 12, 3, 19, 00, 00) , price: 4500)
