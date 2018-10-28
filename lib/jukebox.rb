songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def prompt()
  puts "Please enter a command:"
  gets.chomp()
end


def run(my_songs)
  help()
  input = prompt()
  
  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt()
    elsif input == "play"
      play(my_songs)
      input = prompt()
    elsif input == "help"
      help()
      input = prompt()
    else
      puts "Invalid command"
      help()
      input = prompt()
    end
  end
  
  exit_jukebox()
end


