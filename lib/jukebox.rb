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

# def help
#   #this method should be the same as in jukebox.rb
#   puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
# end


# def list(my_songs)
#   #this method is different! Collect the keys of the my_songs hash and 
#   #list the songs by name
#   i = 0
#   my_songs.each do |song|
#     i += 1
#     puts "#{i}. #{song}" 
#   end
# end


# def play(my_songs)
#   #this method is slightly different!
#   #you should still ask the user for input and collect their song choice
#   #this time, only allow user's to input a song name
#   #check to see if the name they give is in fact a key of the my_songs hash
#   #if it isn't, tell them their choice is invalid
#   #if it is, play the song using the system 'open <file path>' syntax
#   #get the file path of the song by looking it up in the my_songs hash
#   puts "Please enter a song name or number:"
#   input = gets.chomp
#   if input.is_a?(Integer)
#     my_songs.select do |song, location|
#       location.include?(input.to_s)
#     end 
#   end 
# end

# def exit_jukebox
#   #this method is the same as in jukebox.rb
# end

# def run(my_songs)
#   #this method is the same as in jukebox.rb
# end


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
 def get_song(input,songs)
  songs.find do |track|
    track.start_with?(input) || input.to_i - 1 == songs.index(track)
  end
end
 def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  song_name = get_song(input, songs)
  if song_name
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end
 def exit_jukebox
  puts "Goodbye"
end
 def run(songs)
  input = ""
  help
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp.downcase
    help if input == "help"
    list(songs) if input == "list"
    play(songs) if input == "play"
  end
  exit_jukebox
 end