# mol_assignment

Task 1A
Refer to the following URL for a sample of an apache log file. You can use this as test data
for testing your task below.
https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Format
s/apache_logs/apache_logs
1. Write a bash script/command that:
a. counts the number of HTTP 4xx/5xx response statuses in the apache log file
that is specified on the command line;
b. if the number above exceeds 100, sends an email reporting on the high
number of error responses.

2. How would you get this script to run once at a specific time every day?

Task 1B
Expanding on Task 1A, you have encountered a situation where the log files have piled up
and your machine is running out of storage. You have been tasked to write a script to clean
up /var/log with the exception that you need to keep the last 3 days worth of logs. The log
folder contains logs from three sources (backend logs, application logs and monitoring logs)
and are rotated daily.
Log filename format
backend.log
backend.log.0.bz2
backend.log.1.bz2
application.log
application.log.0.bz2
monitoring-07-22-2019__23:39:19.209.log
monitoring-07-23-2019__20:22:18.103.log
