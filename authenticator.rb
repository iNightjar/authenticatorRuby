users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def auth_user(username, password, users)
  users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    else
      puts "Credintials were not correct!"
    end
  end
end


puts 'Welcome to Authenticator Program!'
25.times { print '_'}
puts

attemps = 1
while attemps <= 4
  print "Username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp
  authentication_output = auth_user(username, password, users)
  puts authentication_output
  puts "Press n to quit or any key to continue."
  input = gets.chomp.downcase
  break if input == "n"
  attemps += 1
end
