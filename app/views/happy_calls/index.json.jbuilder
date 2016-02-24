json.array!(@happy_calls) do |happy_call|
  json.extract! happy_call, :id, :calldate, :brnm, :level, :empnm, :scrno, :content, :team, :callee, :happycalldate, :happycallcontent, :memo, :calltype
  json.url happy_call_url(happy_call, format: :json)
end
