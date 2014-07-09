=begin
  Phase0.Unit4.Week2.
  Anh Kim
  Ruby Password Validator

  Objectives
  Create a ruby method check_password that accepts a string as an argument
  and checks it for the following requirements:

  password must contain at least 6 characters, and no more than 20 characters

  password must contain at least one capital letter

  password must contain at least one number or a special character

  if using a special character, only the following are allowed:
  !, @, #, $, %, &, *, +, :, ?

  if the password passes the above requirements, return "Valid Password"

  if the password fails any of the above requirements, return a message indicating which
  rule the password is failing
=end


# ------------ REFACTORED VERSION 2 --------------------------------
def check_password(pw)
    case pw
    when pw.length < 5 || pw.length > 21
        "Password must be 6 to 20 characters in length."
    when !pw.match(/[A-Z]/)
        "Password must contain at least one uppercase letter."
    when !pw.match(/[0-9!@#$%^&*()+:?]/)
        "Password must contain at least a digit or a special character."
    when !pw.match( /[0-9a-zA-Z]/) || !pw.match(/[!@#$%&*+:?]/)
        "Password must contain only the following special characters: !,@,#,$,%,&,*,+,:,?"
    else
        "Valid Password"
    end
end

p " ---------------- TEST CODE ----------------------\n"
p " All should be false except the last test"
p check_password("hello") == "Password must be 6 to 20 characters in length."
p check_password("123456789qaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaffffffffgfffffff") == "Password must be 6 to 20 characters in length."
p check_password("hahahahahahahaha") == "Password must contain at least one uppercase letter."
p check_password("nomnomnomnom@@@@") == "Password must contain at least a digit or a special character."
p check_password("Wah1}}}}}}}}}") == "Password must contain only the following special characters: !,@,#,$,%,&,*,+,:,?"
p check_password("Th1s$houldWork!") == "Valid Password"






# --------------- VERSION ONE ------------------------

def check_password(pw)
  # this combination means, 6-20 characters string,
  # with at least one uppercase letter,
  # and at least one digit or one of the following character ! @ # $ % & * + : ?
  reg = /^{6,20}(?=.*[A-Z])(?=.*[1-9]|[!@#$%&*+:?])/

  # return valid if we find a match
  if (reg.match(pw))
    return "Valid Password"
  else
  # return an error message, question: how do you specify which part the password fails
    return "Invalid input"
  end
end


# -- DRIVER CODE --
p "--------------- FIRST TEST ----------------------"
p check_password("This$houldwork!") == "Valid Password"
p check_password("helloWorld1!") == "Valid Password"
p check_password("Haa") == "Invalid input"
p check_password("123456a!") == "Invalid input"

=begin Terminal Output
Hmmnn, why does the first test fail?

anhmacbook:rubybox anhkim$ ruby password_validator.rb
false
true
true
true
anhmacbook:rubybox anhkim$

=end

# begin Terminal Output
# Maybe it's because I didn't fullfill the third condition.
p " ---------------SECOND TEST ------------------"
p check_password("This$houldwork!1") == "Valid Password"
p check_password("This$houldwork!") == "Invalid input"
p check_password("helloWorld1!") == "Valid Password"
p check_password("Haa") == "Invalid input"
p check_password("123456a!") == "Invalid input"

# What went wrong? Is it my regex or something else? I have a hunch.
# Now I am testing the case of inclusive vs. exclusive OR

#  case 1: "the password must contain at least one number or a special character OR BOTH"
p "------Exclusive or Inclusive OR ---------------"

p check_password("TestingCase1%%") == "Valid Password" # true means inclusive

#  case 2: "the password must contain at least one number or a special character but NOT BOTH"

p check_password("TestingCasec2%%") == "Valid Password"  # true means  inclusive, false means exclusive


=begin
"--------------- FIRST TEST ----------------------"
false
true
true
true
" ---------------SECOND TEST ------------------"
true
true
true
true
true
anhmacbook:rubybox anhkim$
=end

# ---------------- REFLECTION ------------------------
# I was a bit confused on the third conditional:
# "password must contain at least one number or a special character"
# I think I was confused on the case of inclusive vs. exclusive or
# Inclusive or: A or B or both. Exclusive or: Either A or B but not both.
# I don't know how to give the error code for specific parts of the password that do not match.
# Perhaps assert is better.