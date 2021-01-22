# North Carolina 2020 Election Results

Contains a zip file from the NC SBE FTP [server](http://dl.ncsbe.gov/ENRS/2020_11_03/results_pct_20201103.zip). The layout of the data is a tab-delimited file. For information on the schema visit, [here](http://dl.ncsbe.gov/ENRS/layout_results_pct.txt). Also has a script `run.sh` to take the zip file and create a postgres table named `results` with the information.

## Schema
```
name                    data type          description
------------------------------------------------------------------------------------
county          text(30)       County name
election date       text(10)       Election date (MM/DD/YYYY)
precinct        text(12)       Precinct
contest group id    number         Group ID of the contest (used to link contests across counties)
contest type        text(1)        Type of contest
contest name        text(60)       Name of the contest
choice          text(60)       Name of the choice
choice party        text(3)        Party of the choice
vote for        number         Number of votes allowed to be cast for the contest
election day        number         Number of votes with vote method of election day
one stop        number         Number of votes with vote method of one-stop
absentee by mail    number         Number of votes with vote method of absentee by mail
provisional     number         Number of votes with vote method of provisional
total votes     number         Number of votes all total
real precinct       text(1)        Y/N - Y = real precinct; N = administrative precinct
```
