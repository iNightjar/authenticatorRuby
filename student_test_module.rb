# Using CheckCredentails >> methods to create hashed passwords for students
require_relative 'CheckCredentails'

class Student
  include CheckCredentails
  attr_accessor :first_name, :last_name, :email, :username,  :password
  def initialize(first_name, last_name, username, password, email)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @password = password
    @email = email
  end
  def to_s
    "First name: #{@first_name}"
  end
end

inightjar = Student.new("Muhamed", "Medhat", "iNightjar", "passssssword0", "inightjar@email.com")
hashed_password = inightjar.create_hash_digest(inightjar.password)
puts hashed_password
