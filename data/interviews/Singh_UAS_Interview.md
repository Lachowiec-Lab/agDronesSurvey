Guest: Dr. Keshav Singh

Institution: AAFC

Interview date: 5-11-22

<u>Background</u>

Dr. Singh is a Research Scientist who works for Agriculture and
Agri-Food Canada (AAFC) and is stationed in Lethbridge, Alberta. His
scientific background is mostly on remote sensing and phenomics. He uses
a lot of different measurement techniques in his research program
including: imaging and analysis of indoor plant growth experiments,
remote sensing using UAS/satellite, and proximal imaging using
phenocarts. Roughly 50% of his program is based upon aerial imaging
using RGB, thermal, and multispectral sensors.

The main focus crops at his location are wheat, canola, lentils, dry
beans, and other pulse crops. Prior to his position at AAFC he did
postdoctoral training at the University of Saskatchewan and University
of California – Davis.

<u>Interview Questions:</u>

> *<u>1.      What do you consider the biggest barriers to entry for
> implementing a UAS into a research program? </u>*

One of the biggest barriers to entry is system integration. Specifically
getting the drone and sensor to communicate effectively. There are very
few companies that provide integrated systems that enable the UAS and
sensor (multispectral or hyperspectral) to communicate seamlessly. There
are several options for both multispectral cameras and UAS. Getting the
system made of components from different manufacturers to consistently
collect the needed data is a real challenge for someone starting out.

His group has several drones. The two major ones are a DJI M4 and a DJI
Matrice 600 Pro. They use a MicaSense multispectral sensor (RedEdge?)
and use hyperspectral cameras from Specim and Resonon.

*<u>2. What do you consider to be the most and least promising
applications of UAS-based imaging for agricultural research?  </u>*

The most promising applications are: measuring plant emergence,
assessment of plant vigor, plant maturity, measurement of plant height,
and plant foliar biomass.

There is some potential to measure how plants respond to abiotic and
biotic stress. Multispectral indices clearly respond when plants are
stressed. The key is to understand how these measurements influence
final yield or other product quality traits.

Even with multispectral sensors it can be difficult to identify the
cause of stress. For example it can be a challenge to identify if plants
are suffering from drought or nitrogen stress from UAS image data alone.

Q: Does hyperspectral help?

A: Yes, maybe. Hyperspectral imaging is a promising technology because
you have so many bands for classification but the major issues are in
how you deconvolute the signal. This is not a trivial issue and more
work is needed to know how effective these sensors can be.

> *<u>3.      What are some of the things you wish you had known before
> you began using a UAS for data collection? </u>*

First steps are to have a flight and data collection protocol to follow.
Make sure you know how to integrate the system through the series of
apps needed to get the hardware to communicate and function correctly.
Next you need to know how the sensor should be calibrated. The sensor
needs to be calibrated properly for the conditions you are collecting
data under. Use of an irradiance sensor (downwelling light sensor) can
help adjust light and image exposure.

In some cases, the sensor comes with a calibration target, in other
cases you need to be more creative.

There are no off the shelf calibration panels for hyperspectral sensors,
but you need to make a selection based upon the sensor range. This is
difficult. Calibration tools used in the film industry are typically
saturated under the light encountered in field conditions.

They have found the need to develop calibration protocols in the lab.
This is particularly important in locations that and different sun
angles, etc.

The main objective is to keep data as homogenous as possible.

They have found the most effective calibration panels are usually around
18% reflectivity. Need to consider the calibration and direction of
light.

Although the guidance to collect data around solar noon is sound for
reducing shadows, this isn’t always possible. Weather patterns differ by
region, if there are always adverse weather conditions around solar noon
it might be best to collect data earlier or later. The key is to keep
the time of flight/data collection consistent. A good rule of thumb is
to keep it within 3 hours (+/- 1.5 hours).

> *<u>4.      What educational resources have you found most useful when
> developing your own skillset with UAS-based imaging? </u>*

Probably resources dedicated to decision making of post processing
software and the steps needed to get information from the data
collected. What is the calibration step? Do you reply upon existing
software tools? Do you develop your own processing routine?

It is really important to have a good understanding of computer
coding/scripting/programming to analyze the data. Languages that Dr.
Singh feels are useful are Python, R, or MATLAB.

He also thinks it is good to have standards to compare data and data
analysis routines with. For example: In some cases, for hyperspectral
data, there are offsets built into the hardware that will give different
values from off the shelf software. It is important to identify if your
data falls within the range of expectations instead of just blindly
trusting numbers coming out of a software or instrument.

Generally there are 2 types of calibration:

1)  Get it from the manufacturer (provided as calibration files)

2)  Do the calibration yourself

To generate orthomosaics his team has used both Pix4Dmapper and Agisoft
Metahape (nice opensource API), ArcGIS, and they have created custom
workflows in Python. Dr. Singh notes that open source tools are nice
because it is nice to have the freedom to modify routines.

> *<u>5.      Are there other comments you believe would benefit an
> agricultural researcher considering implementation of a UAS into their
> research program? </u>*

Good to have groups to share information with on-line. It is nice to
share information resources and get feedback in real-time. Open sources
is especially useful for public research programs.

Q: Can you talk a bit about the choice of sensor (RGB, multispectral,
hyperspectral, LIDAR, etc.)?

A: The choice of sensor is really dependent upon the goals of your
program. RGB is mostly used for physical traits. Think of
characteristics you can describe with your eyes: Number of plants, size
and shape of the plants (3D model etc.). For physiological traits it is
generally preferrable to use a multispectral sensor. This can be useful
for mapping your field based upon general plant stress. Hyperspectral
may give you a deeper understanding of what signal constitutes
particular abiotic or biotic stresses. LIDAR gives you more precise
height, elevation and volume data. An additional benefit of LIDAR is
that it is not depended upon light (data can be collected at night).

Q: What do you use for set up of ground control points (GCPs)?

A: They use a handheld GPS and TRK base unit (Trimble). Some key
considerations are that GCPS should be placed at equal distances and
cover the entire data collection area. Dr. Singh recommends a minimum of
5. One in each corner of the field and one in the middle. If the field
is huge… it might be advisable to use 7 or 8 evenly spaced GCPs.

One option is to use GCP panels that are integrated with GPS. That way
you can collect the data at each flight.

Q: How often do you collect ground truth data?

A: Generally the same day as the flight… within 24 hours. They collect
data ever time they do a mission.

Q: Where should folks be investing money to make a broader impact?

Goals of folks are different across domains. Researchers are usually
focused on papers, studies, etc., whereas industry is focused on direct
application, prescription maps, quantity of fertilizer and pesticide
application, etc.

The key is how can be we provide this information. One impactful effort
would be to train farmers to operate UAS sensors… have a standard
pipeline to get the data they need… or hire a team to do this based upon
region or commodity.
