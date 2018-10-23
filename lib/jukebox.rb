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

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |track, i|
    puts "#{i+1}. #{track}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.find do |song|
    if song.include?(input) || input.to_i - 1 == songs.index(song)
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = nil
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    list(songs) if input = "list"
    play(songs) if input = "play"
    help if input = "help"
    exit_jukebox if input = "exit"
  end
end 