# 🚪 Ruby Authenticator with Bcrypt 🐢

This is a simple authenticator written in Ruby that uses the bcrypt gem to securely hash and verify passwords. You can use this authenticator to add user authentication to your Ruby projects.

## 📦 Installation

To install this CheckCredentails, simply clone this repository to your local machine:

```sh
git clone https://github.com/iNightjar/authenticatorRuby.git
```

Then, navigate to the project directory and install the required gems using Bundler:
```sh
cd authenticatorRuby
bundle install
```

## 🔑 Usage
To use the authenticator, you can require the CheckCredentails.rb file in your Ruby code:
```ruby
require_relative 'CheckCredentails'

# Create a hash password for your instance of object: like a student password
hashed_password = instance.create_hash_digest(instance.password)

# Securely encrypts List of users passwords using a hash function.
hashed_users = instance.create_secure_users(users_List)

# Check if user is an authenticated user or is included in the authenticated ones
is_authenticateed = instance.authenticate_user(instance.username, instance.password, users_List)
```

### The CheckCredentails Modules

    • verify_hash_digest(username, password, list_of_users): Registers a new user with the given username and password. The password is securely hashed using bcrypt before being stored in the database.

    • create_secure_users(list_of_users) takes a list of user records (which is typically an array of hashes) and securely encrypts their passwords using a hash function. This method is useful for creating a secure database of user records, where the passwords are encrypted and cannot be easily accessed or decrypted by an attacker.

    • authenticate_user (username, password, list_of_users): Authenticates a user with the given username and password. The password is verified against the hashed password stored in the database using bcrypt. Returns true if the authentication is successful, and false otherwise.


## 🔒 Security
Passwords are securely hashed using bcrypt before being stored in the database. This makes it extremely difficult for an attacker to retrieve the original password from the hash.
