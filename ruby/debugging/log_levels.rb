require 'logger'
logger = Logger.new(STDOUT)
logger.debug("debug")

logger.info("Starting Application")
begin
  0 / 0
rescue StandardError => e
  logger.error(e.message)
end

logger.warn("warn")
logger.error("error")
logger.fatal("fatal")
