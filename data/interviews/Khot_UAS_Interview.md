Guest: Dr. Lav Khot

Institution: Washington State University

Interview date: 5-10-22

<u>Background:</u>

Dr. Khot is an Associate Professor of Agricultural Engineering in the
Center for Precision and Automated Agricultural Systems at Washington
State University (WSU) in Prosser, WA. He was hired to develop precision
agriculture approaches to manage crops grown in central Washington
state. Much of his work has focused on remote sensing, building crop
input models for irrigation, nutrient management, and pesticide
application.

He also is currently the Director of WSU’s AgWeatherNet, which is a
large, statewide network of sensors that can be used to develop decision
support tools for agriculture.

A lot of his research is focused on remote sensing, some of it with
drones/UAS. His team has been using drones in this domain for several
years and the focus is centered around the data and applications, not as
much on platform development.

One major focus is on crop water stress, crop water use mapping, etc.
Other applications include assessment of crop lodging in cooperation
with USDA-ARS scientists. On the genetics side they’ve worked with folks
on forecasting yield of climate resilient crops like pinto bean. They’ve
also done some work with potatoes in cooperation with Dr. Rick Knowles
and Dr. Mark Pavek at WSU.

Types of work include projects focused on estimation of crop loss
(potatoes and hail damage), crop loss cherry (freezing) and water
loss/drought for several crops.

More recently his group has acquired a platform that can be used for
pesticide application. Lots of work needed to configure flight
parameters for delivery in grape, apple, etc.

Also has a project with Dr. Elizabeth Beers focused on release of
beneficial insects in orchards for integrated pest management.  
  
He is involved in a multi-state group: S1069: Research and Extension for
Unmanned Aircraft Systems (UAS) Applications in U.S. Agriculture and
Natural Resources which is active through 2026.

<u>Interview Questions:</u>

> *<u>1.      What do you consider the biggest barriers to entry for
> implementing a UAS into a research program? </u>*

When he started data collection platforms were not at all standardized.
There was no homogeneity for mission planning, vehicle-sensor
integration, clarity on what sensors the broader community would use,
etc. This has improved somewhat as there are now integrated UAS sensor
options on the market that can be controlled with a single app.

Analytics are still a major barrier. It is difficult to realize outcomes
from the data collected due to this barrier. For example, it can be
difficult for students or technicians to generate orthomosaics from the
images collected, and harder still to get plot level data from
orthomosaics using programs like QGIS.

There are also issues with data collection itself that sometimes cause
problems. One can use multispectral or thermal sensors to study crop
water use but there are caveats. For example, if images are taken
directly after watering with overhead sprinklers it causes problems that
confound the signal that is being looked for. The same is true with
satellite imagery. It is important to take all remote sensing data with
a grain of salt. Timing is really important and using UAS is good
because it enables the researcher to really dial in the time of data
acquisition.

As far as hardware selections go, they’ve developed a preference to “go
local”. If they have problems with the drone or sensor it is often
easier and faster to get support from local vendors than it is from
international companies. They currently have 4 UAS platforms and are
trying to move away from DJI due to U.S. government security concurs.

Their group prefers customizable open-source solutions where they can
pull GPS, thermal and RGB data from the platform directly. This can be
easier with an open-source platform.

> *<u>2.      What do you consider to be the most and least promising
> applications of UAS-based imaging for agricultural research?  </u>*

Precision agriculture. One application is monitoring of plant water use.
Multispectral imaging can be used to assess plant stress. Another
precision ag application is chemical application. Using UAS doesn’t
scale well for large fields, but it can be useful for point
application/spot spraying when a localized problem can be identified.
One pest of interest is mealy bugs in grape crops. Application of plant
growth regulators (PGR) may also work in some cases.

Phenotyping plants as applied to plant breeding. Folks feel it may help
make breeding decisions earlier in the breeding cycle.

Crop insurance is another potential application. Examples include hail
damage in potato, lodging in mint, etc. Crop lodging map.

Max asked a follow up question about difference/effectiveness of thermal
and multispectral sensors. Dr. Khot mentioned that both are good tools
for studying water stress. Multspectral is used to look more at the
plant response to stress, whereas thermal imaging will give a direct
measurement of temperature. These are very different types of
measurements. Multispectral tends to have a larger variation potential
than thermal.

> *<u>3.      What are some of the things you wish you had known before
> you began using a UAS for data collection? </u>*

Here are some suggestions for a beginner: Set up white or different
color boards that mark field boundaries. Setting up ground control
points (GCP) first thing before data collection. This greatly enhances
the ability to extract data from multiple time points. When using a
multispectral make sure you do a calibration with a reflectance panel
before and after each flight.

Often times you can reduce the data capture rate. For RGB imaging
adjusting the ground travel speed and image capture rate to achieve 70%
side and front overlap works well. For thermal imaging you can reduce
the number of frames capture to achieve 80-90% overlap. Over the course
of the season data builds up. Not uncommon to collect several hundred
gigabytes or even terabytes of data, eliminating unnecessary data
collection (reducing frame capture rate) will keep storage requirements
efficient.

> *<u>4.      What educational resources have you found most useful when
> developing your own skillset with UAS-based imaging? </u>*

Learn about the UAS and sensor platform by reading the manuals or
documents associated with the ones you will be using. Learn the basics
of drone flights. Dr. Khot teaches a course at Washington State
University (BSE552: UAS in AG). He recommends looking at the Federal
Aviation Administration web site. Particularly the FAA Part 107 chapters
of flight basics. Hands on training is very helpful. He recommends going
out with a more experienced pilot and trying out a drone mission or two.
As for data analytics, his group has a couple of standard pipelines in
the lab. They share analysis templates among group members and customize
them for individual applications. Their workflow usually involves
generating an orthomosaic in Pix4D then extraction of plot level data in
QGIS or ARCGIS.

> *<u>5.      Are there other comments you believe would benefit an
> agricultural researcher considering implementation of a UAS into their
> research program? </u>*

Remember that when planning data collection that you will always need to
analyze and sometimes re-analyze the data that has been collected. The
main purpose of any experiment is to generate data that is useful.
Before you begin, think about what metadata you need to describe the
experiment. Plant your resources not only based upon the drone and
sensors but on the experiment. Think about what type of metadata or
other data types you will need to collect. Without good metadata or
ground truth data you are forced to make a lot of assumptions that might
be wrong.

As far as drone basics go, good mapped GCPs and reflectance panel
calibration of sensors is a good start for the acquisition stage.

<u>Q: What are other related technologies that folks are developing?</u>

One exciting technology is thermal RGB data from satellites. Lots of
multispectral data available from Maxar and Planet Labs. Resolution is
pretty good (~ 0.3 M / pixel). No really good source of thermal data
from satellites so using thermal sensors on UAS provides benefit for
that reason.

<u>Q: Do you have a rule of thumb for how many GCPs are needed in a
field?</u>

Generally, at least one at each of the 4 corners of the experiment. If
you have a large field (\>5 acres) you might include some that
crisscross through the middle of the field.

<u>Q: What resources are needed to get more folks to adopt UAV? What can
funding agencies (USDA, NSF, etc.) do to help make your UAV research
program even more successful?</u>

Collecting more datasets with good metadata. Need more diversity of
crops. Need to make the data publicly available. This will help develop
and perfect algorithms for classification and prediction.

More standardization of sensors. It is unfortunate that many times the
bands collected by multispectral cameras do not match those captured by
satellites. One example of this is Micasesne RedEdge camera. Original
did not match but the newer 10-band system enables direct comparisons.

Dr. Khot is also interested in exploring the utility of non-imaging
sensors on drones. The idea is to measure the temperature and
microclimate across orchards… sort of a meteorological map at the micro
scale. This might help us better understand bud emergence profiles of
fruit trees. It would be nice to tie this data to the national service
grid.
