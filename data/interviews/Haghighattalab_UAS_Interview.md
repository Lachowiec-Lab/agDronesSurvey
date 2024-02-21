Guest: Dr. Atena Haghighattalab

Institution: Independent Global Consultant

Interview date 5-13-22

Dr. Haghighattalab is an independent research consultant who has been
applying UAS for plant breeding since 2014 but has been involved in
remote-sensing for much of her professional career having been awarded a
undergraduate degree in Geoimaging/Geographic Information Systems and a
Master’s degree in Remote Sensing Engineering.

Her interest in agriculture began when she wanted to broaden her skills
and utility. Ultimately, she wanted to identify ways to user her
expertise in different areas.

Her graduate thesis advisors at Kansas State University were comprised
of GIS and remote sensing scientists, plant breeders/geneticists, and
one from private industry focused on robotics and image analysis. One of
the most valuable experiences in her career was working at CIMMYT in
Mexico. There she used both small sensors attached to Cessna planes and
small drones (fixed wing and rotocopters) for the purpose of comparison.
She has experience using a lot of different sensor types (RGB,
multispectral, thermal, hyperspectral). She notes that payload size is
an important consideration. You can put a lot on a drone but you can put
a lot more different sensors on a Cessna.

As part of this research she had a lot of ground truth data (plant
height, yield, NDVI) to compare the remote sensing measurements with and
essentially all the data they examined was well correlated.

With so many different types of drones and sensors considering the
application, what you want to get out of the measurements is important.
If a drone and sensor combination works well for corn can we transfer
this same technology to cotton?

She found that cotton was by far the hardest for breeding work. It was
great to work at CIMMYT because you know the budget from the start of
the project. It was clear to her she needed to keep costs low to deploy
this technology more widely across multiple field sites so she developed
a drone and camera combination that costed ~\$700. The thought was that
you don’t need extremely high spectral resolution to measure height,
plant nutrient deficiency, or severe insect damage.

She notes that it isn’t usually wise to buy the most expensive drone
first as technology changes rapidly. She recommends buying a drone and
sensor combination that is well suited for your research
question/application.

Good first steps are to develop a team and build the downstream data
analysis pipelines. Once you collect data across several years you will
find that in retrospect not all the data is collected perfectly. It is
important to spend the time to learn to analyze the data you are
collecting.

She notes that it’s no longer high-throughput phenotyping if you’re just
simply moving time/effort from a research technician to a computer
science student.

1.  *<u>What do you consider the biggest barriers to entry for
    implementing a UAS into a research program? </u>*

By far the biggest barriers are not having the platform and foundation
of a multidisciplinary team. Many labs have a drone and they think that
is the end of it. Truth is that just collecting the data isn’t enough.

That said, there are many details that are very important to collection
of good quality data. Considerations include: time of day, sensor
calibration, need to record and track metadata, environmental conditions
during data collection. She emphasizes that time of day is key to
consider/keep consistent. There should be a schedule for data
collection.

If you have a group that has experience with these items the next
challenge you will encounter will be how to store the data, because
there will be a lot of it. You also need to know how to analyze the
data. It requires specialized knowledge, skills, and abilities to
analyze these datasets. Oftentimes there is a need for collaboration
with folks outside of your discipline.

*<u>2. What do you consider to be the most and least promising
applications of UAS-based imaging for agricultural research?  </u>*

Most promising:

When she started in this field everyone was excited that measurement of
plant height could be automated. Then they found out that they could
measure a lot of other traits (lodging, ground coverage, etc.). Now they
can build models to predict days until heading and days until maturity.
The use/application of neural networks to model data is exciting.

Least promising:

Totally automated data collection and analysis has been oversold. This
is probably not realistic but the technology is advancing. Some traits
will be easier than others and it really depends upon the focus of the
team. Results indicate it is definitely possible to predict yield and
other features for some commodities.

Some folks in private industry over promise what they can deliver.
Particularly what can be delivered on a timeline. Just because something
are possible they are not always easy.

3.  *<u>What are some of the things you wish you had known before you
    began using a UAS for data collection?</u>*

When she started she quickly realized that analysis of data from
satellites and drones is quite different. She retrospectively wishes
that she had better Python and R skills at the time. R is/was used a lot
by plant breeders, whereas Python is good for cross domain work.

Mentioned that she has always had a good support team (plant breeders,
IT support), meaning that she always been able to collect data and
analyze it.

When she started this work they were sort of pioneers in a way. One of
the first groups trying to connect phenotype, genotype and environment
data. They made mistakes, failed on a few flights, and had to learn and
improve from these experiences.

In subsequent years other folks starting doing it too and they could
learn from each other’s experience.

> *<u>4.      What educational resources have you found most useful when
> developing your own skillset with UAS-based imaging? </u>*

It really depends on the individuals background of course. If you’re
coming from a plant breeding/agriculture background she recommends:

Find collaborators that have an incentive to work with you. Find areas
where unique skills apply to the same problem and how they can share
knowledge. Learn from each other.

Going to the Phenome/North American Plant Phenotyping Network (NAPPN)
conference. Most folks there have some computer science background and
the focus is primarily about merging trans-disciplinary skills. The
theme is high-throughput phenotyping, root imaging, data synergy.

She also mentions the Australian Plant Phenomics Group, International
Plant Phenotyping Network and the Phenome Force workshop series as
additional resources.

> *5.      Are there other comments you believe would benefit an
> agricultural researcher considering implementation of a UAS into their
> research program? *

With any research subject, we tend to get more excited about the
potential of a technology relative to what the technology actually does
for us. Remember the application.

More work is needed on sensor development. She feels that we need more
exploration of how narrow bands report on different features. One point
of emphasis is that we need to make the effort to collect the best data
possible (consistent time of day, weather, etc.) and do a better job at
considering the effect of weather on what the sensor outputs. More work
is needed on sensor technology.

When it comes to sensor choice think about your needs. A farmer needs to
survey large areas of land and see affected areas. Can they tell if
damage is due to hail or disease?

RGB can only tell if there is damage, multispectral may in some cases be
able to discriminate between types of damage.

Hyperspectral and thermal imaging is a totally different story.

Thermal provides a direct measure of heat and nothing else. No other
technology will give you this type of direct measurement.

She hasn’t worked much with hyperspectral data but recognizes the
challenge of figuring out what wavelengths are useful and which are
linked to a trait of interest. She wonders “Do we really need or want
that much data?”

She believes hyperspectral technology is really good for discriminating
between 2 different groups or categorize what is happening. Which bands
are useful for what needs? Then these wavelengths can be used to develop
multispectral cameras for specific applications. Unfortunately, there
will be a lot of noise that can confound results that makes sifting
through the data difficult.

Comparison of data across time and space is a challenge. Every pixel on
the ground is relative. You collect the data today and you want to
analyze data collected over several years. The computer only knows as
much as you can tell it. The more data you have, the more you can use
the computer to learn from it.

She gives the following example:

A single plot (let’s say plot \#15) will be at slightly different
coordinates within the image at a different date. Think of the
orthomosaic as layers of data. Can layers go on top of each other? You
will need to georeferenced to data to do this. This is very important
for temporal analysis. Both spectral and temporal resolution are
important for learning from data.

Final thoughts are: “It’s a process and we’ll figure it out. We need to
listen to each other and learn from our experience. Collaborate,
collaborate, collaborate.”
