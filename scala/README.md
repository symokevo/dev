## Introduction
* This is my exploration of the Scala programming language
- For coding environment, I installed **jdk,** **ammonite REPL,** **sbt,** and **mill** <br>
On my visual studio code I also added **scala metals** extension to alongside, the scala compiler <br>

* Using Ammonite
To run a script: **amm name_of_script.sc** <br>

* Watching scripts
To watch a script use: **am -w name_of_script.sc** or **am --watch name_of_script.** <br>
- Watching is meant to automatically detect changes within the current file and recompile to generate the output <br>

* Access functions within a scala script using: **amm** with **--predef** flag.