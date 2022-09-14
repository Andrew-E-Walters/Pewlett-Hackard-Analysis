# Pewlett-Hackard-Analysis
## Overview of Analysis
### Purpose of Analysis 
Now that Bobby has proven his SQL chops, his manager has given us two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, we will write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age. 

## Results
I was able to filter the data to the critera that we are saying is employees who are retiring per title. The data was filtered by looking at employees who were born between 1952 and 1955. We then ordered them by their employee number.  

### Retirement age employees 
![Retirement titles](https://github.com/Andrew-E-Walters/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)

Once that was completed we could then retrieve the number of employees by their most recent job title who are about to retire

### Retirement by Title
![Retirement per title](https://github.com/Andrew-E-Walters/Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles.png)

We can see that there are many retirement age employees that are about to retire. The next question is: how does this number compare to the number of employees that are eligible to replace them? Next we had to determine the critera that fits who exactly is eligible to participate in the mentorship program. As we had filtered to retirement age employees, I was able to do the same with employees that are eligible to participate in the mentorship program. 

### Eligible for Mentorship
![Mentorship Eligibility](https://github.com/Andrew-E-Walters/Pewlett-Hackard-Analysis/blob/main/Images/mentorship_eligibility.png)

This is great that we have gathered all the employees that are eligible for the mentorship program, but the data filtered as it is doesn't help us compare to the Retirement by Title count. We will need to format the data the same for these Mentorship Employees. 

### Eligible for Mentorship by Title
![Mentorship count](https://github.com/Andrew-E-Walters/Pewlett-Hackard-Analysis/blob/main/Images/mentorship%20eligibility%20count%20.png)

Wow, this tells us a lot will need to be done in order to prepare for the employees that are nearing retirement. 

### Four major points based on Analysis
- Looking at the Retirement by Title image: the majority of retirement age employees are in the Senior Engineer and Senior Staff positions. 
- Looking at the Eligible for Mentorship by Title image: the majority of currently eligible employees are already at the Senior Engineer and Senior Staff positions.
- When comparing the amount of employees based on the current criteria, there is not going to be enough eligible employees to repalace the retirement age employees if the only ones being considered are the ones in the Eligible for Mentorship program. 
- There will need to be an expansion of the critera for employees considered eligible for the mentorship program or else there will be a lack of employees to fill the gap created by the retiring employees as they leave the company. 


## Summary
The Analysis we conducted shows that we will need to have a strong initiave in place to be prepared for the wave of employees that are going to be retiring in the coming years. 

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
There are 72,458 Total Employees that are of retirement age across all departments. We can't predict the rate that they will retire but something could be done to prepare for it. If we make an educated guess that all of these employees will retire in the next 10 years at a even rate of 10% each year, that is a loss of about 7,200- 7,300 employees per year. Pewlett Hackard will need to have these retirement ready employees mentor those that will soon replace them. 

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees
Since we know know the breakdown of retirement-ready employees by departments in our 'Retirement by Title' table, we must see if they are large enough to mentor those that will replace them. 

Using the same methods as before, I gathered the employees who were born in 1956 to 1965, and exculded those who have already left the company, showing only the unique employees left that are not in our retirement ready employee critera. 

#### All Non Retirement Ready Employees
![Non Retirement Employees](https://github.com/Andrew-E-Walters/Pewlett-Hackard-Analysis/blob/main/Images/non%20retirement%20employees.png)

Now once again we will have to see what the breakdown of these employees is by title. 

#### All Non Retirement Ready Employees by Title
![Non Retirement by Title](https://github.com/Andrew-E-Walters/Pewlett-Hackard-Analysis/blob/main/Images/non%20retirement%20employees%20count.png)

We can see that the empolyees that are not of retirement ready age outnumber the reirement ready employees. There are 167,666 Employees that are not in the retirement grouping. While there are not enough Retirement Ready employees to train all of the non retirement ready employees on a 1 on 1 mentor basis, a more logistical appproach could be taken that accounts for real world factors. Knowing that retirement rates, hiring rates, and employee retention is never a constant and fluxuates... we can start a program that aims to have 10,000 Employees who are of retirment ready age mentor 1 on 1 with 10,000 non retirement ready employees. This way there is a constant funnel of employees joining and leaving the company, without a brain and skill loss in the form of employees retiring without properly mentoring the next generation. Someone could dispute this exact method, but surely it is an step in the right direction. 
