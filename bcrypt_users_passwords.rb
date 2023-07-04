require_relative 'CheckCredentails'

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]
hashed_users = CheckCredentails.create_secure_users(users)
authenticated_user = CheckCredentails.authenticate_user("iNightjar", "password1", users) # Credentails not correct
authenticated_user = CheckCredentails.authenticate_user("mashrur", "password1", users) # will work
