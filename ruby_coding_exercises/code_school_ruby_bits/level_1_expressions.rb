# Ruby Bits Tutorial
# Level 1: Expressions

# ex 1
if ! tweets.empty?
 puts "timeline: "
 puts tweets
end

#refactored

unless tweets.empty?
  puts "timeline:"
  puts tweets
end

# ex 2, unless with else is confusing

unless tweets.empty?
  puts "timeline: "
  puts tweets
else
  puts "no tweets found."
end


#refactored

if tweets.empty?
  puts "no tweets found"
else
  puts "timeline: "
  puts tweets
end

# ex 3, nil is false-y

if attachment.file_path != nil
  attachment.post
end

# refactored
if attachment.file_path
  attachment.post
end

# in ruby,  "" is treated as "true"
# 0 is treated as true
# [] is treated as true

unless name.length
  warn "user name required"
end


# ex 4
if password.length < 8
  fail "password too short"
end
unless username
  fail "no user name set"
end

# refactored
fail "password too short" if password.length < 8
fail "no user name set" unless username


# ex 5

if user
  if user.signed_in ?
    # ...
  end
end

# refactored
if user && user.signed_in?
  #...
end


# ex 5
result = nil || 1   # 1
result = 1 || nil   # 1
result 1 || 2       # 1

# if the first part returns true, that is going to get return, the the second part will never get touched

# so for tweets
# if nil, default to empty array
tweets = timeline.tweets
tweets = [] unless tweets

# refactored
# so if timeline.tweets is nil it is going to set it to an empty array
tweets = timeline.tweets || []

# ex 6
# sign_user_in is not evaluated unless current session is nil
def sign_in
  current_session || sign_user_in
end

# ex 7
i_was_set = 1
i_was_set ||=2

puts i_was_set  # assigns 1

i_was_not_set ||=2
puts i_was_not_set  # 2

