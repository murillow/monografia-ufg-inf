local ponto = {}

function ponto.new(x, y)
  return {x = x, y = y}
end

function ponto.dist(p1, p2)
  local dx = (p2.x - p1.x)^2
  local dy = (p2.y - p1.y)^2
  local dist = math.sqrt(dx + dy)
  return dist
end

return ponto