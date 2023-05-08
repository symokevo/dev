require 'logger'
logger = Logger.new(STDOUT)
logger.debug("User 23634 logged in")

# This produces a log message: "D, [2023-05-08T18:11:26.481384 #13260] DEBUG -- : User 23634 logged in"
