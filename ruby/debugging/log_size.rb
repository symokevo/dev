require 'logger'
log_size = 100 * 1024 * 1024 # Shift age
log_limit = 5 # Shift size
logger = Logger.new("log.txt", log_limit, log_size)
logger.debug("User 1 logged in")
