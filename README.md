# Optimization-Techniques-and-Application-Project

## Problem Statement
The main goal is to synchronize private and public transportation in order to optimize the overall traffic situation in the city. It is an application for transport system comprised of advance information about users, routes and vehicles. It provides you with the traffic info, best routes and public transport schedule.

## Introduction
The issue of Traffic Management is a major problem in every city today. Urban Roads are heavily congested due to heavy traffic caused by private vehicles. Most of the Indian Cities have poor public transport systems. 

India is experiencing a rapid urbanization and economic growth, which is fueling the growth of private transport in the country. Currently, India has around 191.7 million registered vehicles as of 31 March 2016 (Source: Vahan Database). 

The Compound Annual Growth Rate of total Registered Motor Vehicles in India for the last 5 years i.e. from 2011 to 2016 was 94.40%. This trend clearly shows that there is large dependence on private vehicles.

Hence there is a clear need to synchronize the public and the private transportation to decongest the cities and control the ever – increasing
pollution.

We try solve this problem by proposing two models, one which schedules the frequency of metro trains such that it is synchronized to demand and in second, we try to set prices of ticket for various age- groups as a small hike in price could result in damage to the ridership and maximize the profit.

## 1. Model A
Jaipur Metro Rail Corporation (JMRC) must be able to determine the number of optimum metro departure/frequency from the place of origin to the destination i.e. from Mansarovar to Chandpole.

A timetable is made in accordance with passenger demand conditions and existed constraints, with regard to passenger service. It means in the off-peak time; the amount of trip will be less compared with the amount of trip during rush hour and vice versa.

A metro can travel from Source to Destination in a time period of ```1/2``` hour and has to return back to its origin by the next ```1/2``` hour. (JMRC)
Metro starts running from ```06:00``` in the morning and end their day by ```00:00```. This whole schedule is divided into ```6``` shifts specified in the table below. Each coach can accommodate ```40``` people where each train has ```8``` coaches. So, ```320``` people travel in a single train. (JMRC)

The metro must satisfy the requirements as shown in the following table.
![alt text](/Images/Model%201%20Fig%201.png)

### 1.1 Objective Function
We have to minimize the number of metro trains that will operate in the given time slots. So, as we have to minimize, the objective function will be,

𝑍<sub>(𝑚𝑖𝑛𝑖𝑚𝑖𝑧𝑒)</sub>=𝑥<sub>1</sub> +𝑥<sub>2</sub> +𝑥<sub>3</sub> +𝑥<sub>4</sub> +𝑥<sub>5</sub> +𝑥<sub>6</sub>

where,

𝑥<sub>1</sub> = the number of metro trains working in Early - Morning.

𝑥<sub>2</sub> = the number of metro trains working in Morning.

𝑥<sub>3</sub> = the number of metro trains working in After - Noon.

𝑥<sub>4</sub> = the number of metro trains working in Evening.

𝑥<sub>5</sub> = the number of metro trains working in Night.

𝑥<sub>6</sub> = the number of metro trains working in Late - Night.

### 1.2 Constraints
We know that Jaipur metro train carries approx. 320 passengers at a single time. Hence maximum 320 people can travel together at a particular time, and in each slot the train makes 6 rounds. So, 1600 people travel in a slot.

Minimum number of passengers that are traveling in particular slot is given in table according to time slot.

Therefore, for early morning slot,
1600𝑥<sub>1</sub> ≥ 11000

In second slot,
1600𝑥<sub>1</sub> + 1600𝑥<sub>2</sub> ≥ 26000

This is so because there will be 𝑥<sub>1</sub> trains returning to source and 𝑥<sub>2</sub> trains going to destination. Similarly, for others

In Third Slot,
1600𝑥<sub>2</sub> + 1600𝑥<sub>3</sub> ≥ 12000

In Fourth Slot,
1600𝑥<sub>3</sub> + 1600𝑥<sub>4</sub> ≥ 23000

In Fifth Slot, 
1600𝑥<sub>4</sub> + 1600𝑥<sub>5</sub> ≥ 10000

In sixth slot,
1600𝑥<sub>5</sub> + 1600𝑥<sub>6</sub> ≥ 7000

So, our constraints are,

1600𝑥<sub>1</sub> ≥ 11000

1600𝑥<sub>1</sub> + 1600𝑥<sub>2</sub> ≥ 26000 

1600𝑥<sub>2</sub> + 1600𝑥<sub>3</sub> ≥ 12000 

1600𝑥<sub>3</sub> + 1600𝑥<sub>4</sub> ≥ 23000 

1600𝑥<sub>4</sub> + 1600𝑥<sub>5</sub> ≥ 10000

1600𝑥<sub>5</sub> + 1600𝑥<sub>6</sub> ≥ 7000

𝑥<sub>1</sub>, 𝑥<sub>2</sub>, 𝑥<sub>3</sub>, 𝑥<sub>4</sub>, x<sub>5</sub>, x<sub>6</sub> ≥ 1 and are Integers

### 1.3 Results
The Minimum Number of Trains which can be working is 37. And,

Trains for Early Morning Slot = 16

Trains for Morning Slot = 1

Trains for After-Noon Slot = 7 

Trains for Evening Slot = 8 

Trains for Night Slot = 1 

Trains for Late Night Slot= 4

### 1.4 Assumptions
* Make the bus journey happened from the starting point to the final destination repeatedly. Thus, the bus departure frequency (bus trip number) from the starting point to the final destination equals with a number of bus trips from the final destination to the starting point.

* Passengers are distributed uniformly in one scheduling partition.

* We also assumed that there are 6 different time slots.

* We also assumed that metro journey happened from the starting point to the final destination repeatedly. Thus, the metro departure frequency from the starting point to the final destination equals with a number of trips from the final destination to the starting point.

* Each Trains can be made to run for a maximum of 2 slots/per day as it requires a battery recharge thereafter.

## 2. Model B
“Delhi Metro lost an estimated three lakh passengers daily in October compared to the same period last year, indicating a severe impact of a second fare hike in six months on the public transport system.” (Times, 2017)

Fares are a direct and flexible instrument to influence passenger behavior and cost recovery of a public transport system. Setting fares is therefore a fundamental problem for any mass transit company or authority. The importance of this task is further increased by technological progress such as the introduction of electronic ticketing systems, which offer opportunities to implement versatile fare structures.

It’s a clear evidence that a price hike has a severe impact on passengers commuting and increasing the number of vehicles on road.

In this model we aim to set prices for different categories of people commuting such that there is not a serious effect on ridership and the Revenue Generated is Maximized and is above the Break-Even Point.

The prices of each category should be less than a set rate. (Like price of a student ticket should be less than Rs. 20 as making a student pay more than that could result in decreased ridership).

Also, operational cost is assumed to be to be around Rs. 2,50,000 per day. So, the revenue generated should be greater than the operational cost.
Cost of ticket of a women and senior citizen should be 50% less than adult and cost of ticket of a student should be al least 25% less than adult and difference between prices of ticket of women and senior citizen should be equal to Rs. 3 and student and senior citizen should be equal to Rs. 2.

The maximum price of ticket for each type of rider is as follows:
![alt text](/Images/Model%202%20Fig%201.png)

From the data collected from intelligent systems installed at each metro station the average ridership of each type of rider is as follows:
![alt text]()
