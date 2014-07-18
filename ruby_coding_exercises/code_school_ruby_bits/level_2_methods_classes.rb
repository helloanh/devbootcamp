def tweet(message, lat, long)
  # ...
end

# -->

def tweet(message,lat=nil, long=nil, reply_id=nil)
end

# -->

def tweet(message, options = {})
  status. Status.new
  status.lat = options[:lat]
  status.long = options[:long]
  status.body = message
  status.reply_id = options[:reply_id]
  status.post
end

#keys are optional
tweet("practicing ruby-fu!", reply_id :227946)

# complete hash is optional
tweet("practice ruby-fu!")


# exceptions:
def mention(status, *names)
  tweet("#{names.join('')} #{status}")
end

mention("your courses rocked!", 'eallam', 'jean', 'anh')


