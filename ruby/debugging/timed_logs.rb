require 'logger'
logger = Logeger.new("log.txt", "daily")
logger = Logeger.new("log.txt", "weekly")
logger = Logeger.new("log.txt", "monthly")
logger.debug("User 45 logged in successfully")
