co = coroutine.create(function(x)
  --> x == 1
  x = coroutine.yield(2)
  --> x == 3
  return 4
end)

y = coroutine.resume(co, 1) --> y == 2
y = coroutine.resume(co, 3) --> y == 4