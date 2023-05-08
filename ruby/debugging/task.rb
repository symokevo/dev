require 'logger'
logger = Logger.new(STDOUT)
# An even shorter implementation: logger = Logger.new(STDOUT, level: Logger::ERROR)

# display logs that are at the info level and higher only
logger.level = Logger::INFO
logger.info("Starting Application")

users = ["Simon", "John", "kevin", "Rabbs"]

if users.length > 3
  logger.warn("Warning! There are #{users.length} users logged in")
end

users.each do |user|
  logger.debug("User: #{user}")
end
logger.info("Finishing Application")
