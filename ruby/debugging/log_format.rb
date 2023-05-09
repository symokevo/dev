require 'logger'
logger = Logger.new("log.txt")
# logger.datetime_format = "%I:%M:%S:%P "
logger.formatter = proc do |severity, datetime, programe, msg|
  "#{severity} | #{datetime} | UTC: #{datetime.utc} | #{msg}\n"
end
logger.debug("User 23643 logged in")
