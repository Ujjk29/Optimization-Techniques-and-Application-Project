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

## Model 1
Jaipur Metro Rail Corporation (JMRC) must be able to determine the number of optimum metro departure/frequency from the place of origin to the destination i.e. from Mansarovar to Chandpole.

A timetable is made in accordance with passenger demand conditions and existed constraints, with regard to passenger service. It means in the off-peak time; the amount of trip will be less compared with the amount of trip during rush hour and vice versa.

A metro can travel from Source to Destination in a time period of ```1/2``` hour and has to return back to its origin by the next ```1/2``` hour. (JMRC)
Metro starts running from ```06:00``` in the morning and end their day by ```00:00```. This whole schedule is divided into ```6``` shifts specified in the table below.

Each coach can accommodate ```40``` people where each train has ```8``` coaches. So, ```320``` people travel in a single train. (JMRC)
The metro must satisfy the requirements as shown in the following table.
