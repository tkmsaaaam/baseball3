json.array! @situations do |situation|
  json.game_id situation.game_id
  json.bat_counts situation.bat_counts
  json.inings situation.inings
  json.actness_results situation.actness_results
  json.where_go situation.where_go
  json.ball_counts situation.ball_counts
  json.ball_strike situation.ball_strike
  json.rbi situation.rbi
  json.steal_counts situation.steal_counts
  json.score situation.score
end
