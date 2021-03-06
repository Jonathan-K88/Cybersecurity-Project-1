## Exploring Kibana Activity with Captioned Screenshots

The screenshots in this repository were used to complete the Exploring Kibana Activity:

1. 

Add the sample web log data to Kibana.

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Add_Sample_Data_to_Kibana.png)


<br>
<br>
<br>
 

2. 

In the last 7 days, how many unique visitors were located in India?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Unique_Visitors_India.png)

- _In the last 7 days, 252 unique visitors were located in India._

<br>
<br>
<br>

In the last 24 hours, of the visitors from China, how many were using Mac OSX?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Unique_Visitors_India.png)

- _In the last 24 hours, of the visitors from China, 11 users were using Mac OSX._

<br>
<br>
<br>

In the last 2 days, what percentage of visitors received 404 errors? How about 503 errors?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Errors.png)

- _In the last 2 days 4% of visitors received 404 errors and 1.33% of visitors received 503 errors._

<br>
<br>
<br>


In the last 7 days, what country produced the majority of the traffic on the website?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Majority_Traffic.png)

- _In the last 7 days, the country produced the majority of the traffic on the website was China._

<br>
<br>
<br>

Of the traffic that's coming from that country, what time of day had the highest amount of activity?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Highest_Activity_Hour_1.png)
![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Highest_Activity_Hour_2.png)

- _Of the traffic that's coming from China, the time of day that had the highest amount of activity is 12:00-1:00PM._

<br>
<br>
<br>

List all the types of downloaded files that have been identified for the last 7 days, along with a short description of each file type (use Google if you aren't sure about a particular file type).

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Downloaded_Files.png)

- _A gz or gzip is a file compression._
- _css is cascading style sheets which handles web presentations._
- _A zip file is a lossless compression format._
- _deb is the format, as well as extension of the software package format for the Debian Linux distribution and its derivatives._
- _rpm is a package manager for Red Hat based systems._

<br>
<br>
<br>

3.

Locate the time frame in the last 7 days with the most amount of bytes (activity). 
In your own words, is there anything that seems potentially strange about this activity?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Strange.png)

- _The most amount of bytes is 15,709 with a user count of 1._
- _Yes, there was an instance of a very high avg. bytes count with a very low user count._

<br>
<br>
<br>

4.

What is the time stamp of this event?
What kind of file was downloaded?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Strange_Activity_File_and_Time.png)

- _The time stamp of this event is 10:55PM. An rpm file was downloaded._

<br>
<br>
<br>

From what country did this activity originate?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Country_of%20_Activity.png)

- _This activity originated from India._

<br>
<br>
<br>

What HTTP response codes were encountered by this visitor?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/HTTP_Code.png)

- _This visitor encountered a 200 HTTP response code._

<br>
<br>
<br>

5.

<br>

Discover tab

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Discover_Tab.png)

<br>
<br>
<br>

What is the source IP address of this activity?
What are the geo coordinates of this activity?
What OS was the source machine running?
What is the full URL that was accessed?
From what website did the visitor's traffic originate?


![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Discover_Answers.png)

- _The source IP address of this activity is 35.143.166.159._
- _The geo coordinates of this activity are latitude: 43.34121, longitude: -73.6103075._
-_The source machine was running on Windows 8._
- _The full url that was accessed is: https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.3.2-1686.rpm._
- _The visitor's traffic originated from http://facebook,com/success/jay-c-buckey._

<br>
<br>
<br>

6.

<br>

What do you think the user was doing?
Was the file they downloaded malicious? If not, what is the file used for?
Is there anything that seems suspicious about this activity?
Is any of the traffic you inspected potentially outside of compliance guidelines?

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Discover_Answers.png)

- _The user was on Facebook and received a link from Jay-C-Buckey of an rpm package and downloaded it from the elasticsearch website._
- _No, the downloaded file was not malicious because metricbeat is not malicious and it came from the elasticsearch domain. It is used download a metricbeat rpm package._
- _It's suspicious that the metricbeat rpm was linked via Facebook instead of an elasticsearch domain._
- _Yes, the referer from Facebook for a metricbeat rpm package could potentially be outside of compliance guidelines._
