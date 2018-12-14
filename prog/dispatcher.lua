local function dispatcher()
  local stream
  while true do
    stream = conn:parse_stream()
    if stream.state == "open" then
      local on_response = callbacks.on_response[stream.id]
      if on_response then
        copas.wakeup(on_response)
      end
    end
    if stream.state == "closed" then
      local on_data = callbacks.on_data[stream.id]
      if on_data then
        copas.wakeup(on_data)
      end
      break
    end
  end
end