This is an introduction to debugging <br>
## Logging and debugging
An informative logfile could save both time and money for a system whenever errors pop up.<br>

## Logging with the logger class
* It is important to intuitively write **puts** statements at the start of your application throughout <br>
the code in order to expose information to the developer.<br>
* You could achieve this via the language inbuil functionalities such as:
- Python's logging module
- Java's log4j
- Node's Winston

## Ruby's logging solves:
- log rotation: ensures logs are sectioned into usable and archivable chunks
- Log file size management: manages the size of the log files. prevents server crashes due to overusing<br>
the disk space
- logging levels (filtering, development, and production log verbosity): offers control over restricting and <br>
filtering the log output.
- Customizable log formating

## Basic Logging in Ruby
* Comes with some essential pieces of information like, category to filter on and a timestamp.
# you can achieve this using the in-built logger class

## log levels
These are simply log tags, which could be either ERROR or INFO <br>
* Other tags (or levels) could be:
- DEBUG
- WARN
- FATAL

## More on log levels
* **DEBUG**
- used for debugging purposes (during development) and is generally disabled in production.

* **INFO**
-  Used for genral messages and often for diagnostic or tracking purposes. (enabled at production)

* **WARN**
- Used for warning

* **ERROR**
- For error manages and exceptions

* **FATAL**
- Used for critical applications failures to log what information you can before the application terminates.