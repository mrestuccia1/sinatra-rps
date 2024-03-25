require 'sinatra'

def handle_battle(player, cpu)
  if player == cpu
    return "We Tied!"

  elsif player == "Rock" && cpu == "Paper"
    return "We Lost!"

  elsif player == "Rock" && cpu == "Scissors"
    return "We Won!"

  elsif player == "Paper" && cpu == "Scissors"
    return "We Lost!"

  elsif player == "Paper" && cpu == "Rock"
    return "We Won!"

  elsif player == "Scissors" && cpu == "Paper"
    return "We Won!"

  elsif player == "Scissors" && cpu == "Rock"
    return "We Lost!"

  end
end

get('/') do
  erb(:index)
end

get('/rock') do
  @player = 'Rock'
  @cpu = ['Rock', 'Paper', 'Scissors'].sample

  @outcome = handle_battle(@player, @cpu)
  erb :response
end

get('/scissors') do
  @player = 'Scissors'
  @cpu = ['Rock', 'Paper', 'Scissors'].sample

  @outcome = handle_battle(@player, @cpu)
  erb :response
end

get('/paper') do
  @player = 'Paper'
  @cpu = ['Rock', 'Paper', 'Scissors'].sample

  @outcome = handle_battle(@player, @cpu)
  pp @outcome
  erb :response
end
