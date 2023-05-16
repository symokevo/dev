This is an introduction to debugging <br>
## Logging and debugging
An informative logfile could save both time and money for a system whenever errors pop up.<br>

## Logging with the logger class
* It is important to intuitively write **puts** statements at the start of your application throughout <br>
the code in order to expose information to the developer.<br>
* You could achieve this via the language in-built functionalities such as:
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

## Order of Log levels
- Debug
- Info
- Warn
- Error
- Fatal
* Therefore declaring log level as **INFO** will only show logs from the **INFO** level and above ie. <br>
**info, warn, error, fatal** <br>
* **logger.level = Logger::ERROR** will only show ERROR and FATAL

logger class allows using a string to configure the log level from an external config input like config file<br>
or an environment variable. eg. <br>
logger = Logger.new(STDOUT, level: "error") or <br>
logger = Logger.new(STDOUT, level: ENV[:LOG_LEVEL])<br>

## Logger output destinations
- STDOUT (Standard output), STDERR (Standard error), File
## Log file
- a file created from the logger class to keep system logs for the program<br>
## Formatting the log
* Custom Date Formats
You could use: logger.datetime_format = "%I:%M:%S:%P " where:<br>
%I: Hour (12-hour clock)<br>
%M: Minute <br>
%S: Second <br>
%P: Meridian indicator(am/pm) <br>
## Log file Management:
- log files easily go out of control over time<br>
You can avoid this issue by configuring log retention and rollover. use either:

* Size-Based Retention
Specify the exact size of the log files and the number to keep before being erased. eg size <= 100mb <br>
and keep only upto 5 of them. totaling to 500mb at maximum. <br>
You can also keep local copies for history purposes.<br>

* Time-based Retention
This means that you could roll over your logs on a daily, weekly or monthly basis.

* Debugging Concepts
**Breakpoints** -  a breakpoint is a point in your code at which you can pause program exception <br>
and take a look around the current application state<br>

**Stack Trace/Call stack/Back Trace** - call stack is the stack of operations at the current time of execution.<br>
stack trace represents call stack and is likely to appear in an error log. back trace = stack trace.

They all equate to a record of a trail of calling functions up until a give point in time<br>

**StepOver, StepInto, StepOut** - allow you to step through your code.<br>
StepOver - to move onto the nex executable line of code.<br>

**Debugging via CLI with byebug** -byebug is a terminal-based debugger.<br>
* installation: **gem install byebug**
