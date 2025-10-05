# Project Name
## [Project Demo (Web Application)](https://pugzzzf.itch.io/space-monkey)
![image](link)

2025 NASA Space Apps Hackathon, with <3 by [team  Kármán Line](https://www.spaceappschallenge.org/2025/find-a-team/karman-line/)

An impact event simulator that demonstrates what happens on when a meteor impacts the Earth, given the data of the meteor, such as its composition, diameter and velocity, and accurately reflects the data depending on the landing site, whether it's hard rock or soil or loose sand regions. The simulator is made to be intuitive, visually attractive, and easy to understand for anyone, while it is mostly designed for the public to understand the implications of an impact event, it may also be used to enable law enforcement or civil and law corps to alert the population as it also estimates the impact diameter, the area affected by the seismic event and impact pressure and determine a radii where it would be catastrophic to be in.

# Map of Contents

1. [About the project](#about-the-project)
2. [Introduction](#introduction)
3. [Video](#video)
4. [How it works](#how-it-works)
5. [Setting up software](#setting-up-software)
6. [Physics](#physics)
7. [Casualties and wounded prediction](#casualties-and-wounded-prediction)
8. [The Future](#the-future)
9. [Scientific support document](#scientific-support-document)
10. [Languages, platforms, engines & other technologies](#languages,-platforms,-engines-&-other-technologies)
11. [Team members & credits](#team-members-&-credits)

# About the project

Submission for the https://www.spaceappschallenge.org/2025/challenges/meteor-madness/?tab=details

Since the beginning of humanity, we have established patterns and ways to avoid danger for survival, we have learnt to overcome the food chain, natural disasters such as earthquakes and hurricanes, pandemics and much more. However, there's a whole universe out there just above our heads. Namely, one of these dangers are foreign objects such as meteors; these can be small pieces of rock, metals or space debris, these enter our atmosphere at very high speeds and usually burns up from the friction the air provides. However, some times there foreign objects can be big enough to withstand the friction and burst very close to Earth, or even physically impact the surface, these cases are called impact events.

The challenge herein lies whether we have enough tools for the public and decision makers to understand the consequences of such rare, but grueling encounters. Asteroids can be hardly avoided when one has a set trajectory towards Earth; in Kármán Line, we believe modeling the effects of said potentially catastrophic encounters will impact the lives of everyone positively, the effects of said events are the following: an impact crater, high pressure waves, seismic energy that's turned into seismic activity, all of this, unfortunately, may lead to the loss of human and animal life alike, severe injuries and high infrastructure damages. Our project aims to bring conscience to the public as to how devastating these asteroids can be, and for law enforcement to be able to plan around the predicted data and mitigate further losses.

In essence, this project is easy enough to use and understand for a person to play around and see the consequences of any asteroid that they may see fit, but also complex enough where it can estimate accurately the amount of casualties, injuries and energy exercised in the impact. We cannot duck and hide from an asteroid impact, but we can plan accordingly.

![image](meteor asset or bg)

# Introduction

The Kármán Line project is a solution to the lack of tools for predicting and modelling asteroid impacts on Earth, it offers a realistic view on the consequences of an asteroid coming into contact with Earth, consequences we can't quite avoid, but can mitigate and plan around of. The Kármán Line project utilizes physical formulas and models to calculate the physical attributes of each impact, and estimate the numbers of casualties and injuries based on the previously mentioned elements and factoring in the data of each region on Earth, such as the density of population and the resistance of the terrain of said region.

![image](meteor data image)
Above image

# Video
[Project Karman Line demonstration](https://www.youtube.com)

# How it works
The project is rendered and setup using Godot Game Engine, using Godot we have the freedom of inserting and formatting our assets as we like and providing an attractive look while also staying scientifically accurate. The results and calculations of the simulated impact are given instantly, and the user can see the simulated crater, estimated numbers and energy output with just clicking the meteor crash site. The radii of the impact, pressure wave, and seismic event are also given for further data for potential mitigation strategies.

# Setting up software

The software can be downloaded from [this link](https://github.com) and can be ran just by running the executable file downloaded, alternatively you can use the software in your online browser [clicking here](https://itch.io).

# Physics

We used various models for complex calculations such as seismic energy or crater diameter, but also used general principles such as the Work-Energy Theorem. We do all our calculations based on the following data entries: meteor diameter, meteor velocity, and density of the meteor composition. Using these we can calculate its volume, mass, and in consequence, its kinetic energy and energy equivalent to TNT kilotons.

The crater diameter is estimated using the Holsapple–Schmidt pi-scaling model, which accounts for the impactor's diameter, velocity and material, and the target's mechanical properties. This semi-empirical formulation distinguishes between gravity-dominated and strength-dominated regimes. Effects such as impact angle, pressure gradient and local gravity variations are not considered. 


We also determine a "fatality radius", distances where the risk of loss of life is very high, based on the overpressure of the impact and the seismic magnitude caused by the impact. The overpressure tells us the effect of the shock wave of an explosion or its equivalent, and can be measured empirically with graphics:
![image](airburst graph)

While observing, we can establish an almost linear relationship between overpressure and the logarithm of the distance of impact in intervals of log10(10^2) and log10(3*10^2), and we made a linear regression adjustment. We obtain an equation that relates the overpressure with distance (in kilometers) for explosions of 1 kiloton of TNT, doing this we can extend to any number of kilotons and obtain the distance that we need, and the fatality radius provoked by the shock wave is the distance where the pressure is near or higher than 35 psi.

To predict the seismic activity's magnitude we calculate the ground motion through Ground Motion Prediction Equations (GMPEs), which link Peak Ground Acceleration (PGA) with moment magnitude and distance. We use the Faccioli–Agalbato model provides a simple empirical relationship between seismic magnitude, PGA and seismic event radius, here where calculate the radius of seismic activity for casualty estimation.

# Casualties and wounded prediction

Knowing the crater, overpressure and seismic radii, total affected populations can be estimated. lethality. Earth has been divided into regions of similar soil composition and population densities to allow for more precise calculations.
The casualty formulas we have determined are weighted by a risk factor to reflect relative lethality, depending whether the population is inside the impact zone, the shock wave zone or the seismic event zone.

**Further information can be found in our scientific document here: [Scientific support document](#scientific-support-document)**

# The Future

In the future, we also plan to add accurate predictions of infrastructure and economic damage, based on several factors such as urbanization, gross domestic product, whether a region's economy depends on industry, agriculture, etc. All these variables make the estimation of economic damage a challenge, however, it is a necessity to further reinforce the people's consciousness on the consequences of impact events.

We also believe it would be a good idea to determine the time it takes for an impact crater to heal; as it leaves a mark in our planet, how many years would it take for the flora and fauna to regenerate in the destroyed, barren land?


# Scientific support document

Provided is a link that provides scientific support to the formulas and models used in the Kármán Line project: https://google.com

# Languages, platforms, engines & other technologies

- Godot Game Engine to build the project upon, written in GDScript.
- itch.io for web deployment.
- Adobe Illustrator for static art and assets.
- Autodesk Sketchbook for animated art and assets.

# Team members & credits

- Ángel Tadeo Díaz Guerrero
- Carlos Julio Maytorena Sanchez
- Leonor Miranda Delgado
- Carlos Armando Quijada Amavizca
- Rogelio Vélez Galaz
- Sofía Verdugo Amavizca 
