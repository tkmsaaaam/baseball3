json.array! @actnesses do |actness|
  json.ball_type actness.ball_type
  json.swing actness.swing
  json.ball actness.ball
  json.strike actness.strike
  json.foul actness.foul
  json.ball_strike actness.ball_strike
  json.situation_id actness.situation_id
end
