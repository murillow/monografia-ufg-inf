function despachante(socket)
  while true do
    dados = copas.receive(socket, 6)
    if dados == "quit" then
      copas.wakeup(on_quit)
    else
      copas.send(socket, dados)
    end
  end
end

function quit()
  -- suspende essa thread até que ela seja escalonada
  copas.sleep(-1)
  -- termina o programa
  os.exit()
end

on_quit = copas.addthread(quit)
copas.addthread(despachante, socket)

copas.loop()