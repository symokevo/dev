require 'logger'
logger = Logger.new(STDOUT)
logger.info("Starting Application")

users = ["Simon", "John", "kevin", "Rabbs"]

if users.length > 3
  logger.warn("Warning! There are #{users.length} users logged in")
end

users.each do |user|
  logger.debug("User: #{user}")
  # display logs that are at the info level and higher only
  logger.level = Logger::INFO
end
logger.info("Finishing Application")
