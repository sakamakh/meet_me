teams = [
  {name: '横浜F・マリノス', stadium_name: '日産スタジアム'},
  {name: '北海道コンサドーレ札幌', stadium_name: '札幌ドーム'},
  {name: '鹿島アントラーズ', stadium_name: '茨城県立カシマサッカースタジアム'}
]

teams.each do |team|
  Team.create(
    name: team[:name], 
    stadium_name: team[:stadium_name], 
    logo: File.open(Rails.root.join('test', 'fixtures', 'teams', "#{team[:name]}.png"))
  )
end  

Match.create(home_team_id: 1, away_team_id: 2,  start_date_time: Time.zone.tomorrow, price: 2000)
