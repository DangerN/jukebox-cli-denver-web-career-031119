require = 'pry'
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
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- exit : exits this program'
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
    if choice.class == Fixnum && 10>choice>0
      puts "Playing #{songs[choice-1]}"
    elsif choice.class == String
      n = 0
      songs.each.with_index do |songs , i|
        n = i+1 if songs.include?(choice)
      end
      puts "Playing #{songs[n-1]}" if n != 0
    else
      puts "invalid input, plaease try again"
    end
end

def list(songs)
  songs.each.with_index do | song , i |
    puts "#{i+1}. #{song}"
end

def exit_jukebox
  puts "Goodbye"
end

