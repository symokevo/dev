require 'logger'
logger = Logger.new("log.tx")
logger.datetime_format = "%I:%M:%S:%P "
logger.datetime_format = "%h %d %Y - %I:%M:%S:%P "
logger.debug("User 2134 logged in")
