Guest: Dr. Seth Murray

Institution: Texas A & M University

Interview date: 5-11-22

<u>Background</u>

Dr. Murray is a Professor in the Department of Soil and Crop Science at
Texas A&M University and the Butler Chair of Corn Breeding and Genetics.
His background is in molecular and quantitative genetics and has a Ph.D
in plant breeding and genetics from Cornell University. His program is
mostly focused on maize breeding for Texas but they also do some work
with perennial sorghum and cowpea.

His history using UAS really started in 2015 when he was asked by the
Associate Director of his department to write a grant proposal with the
Aerospace Engineering department to look at using UAS in agriculture.
Didn’t receive much money but it helped to get buy in from partners at
the University. His program started collecting UAS data in 2016 and
started to really get going in 2017. It was 2017 when they started
collecting data with the Genomes-to-Fields (G2F) project. They submitted
some of the first FAIR data sets for G2F on CyVerse. One product of this
work is this manuscript:
<https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0159781>

They are now among the world leaders in collecting and using UAS data.
The breeding program is focused on phenomic selection. Phenomics are
great because they are much cheaper and more efficient than genomics for
selection in breeding programs.

Seth would not recommend anyone who is not doing this to start doing
this from scratch and to learn from existing experience. David Ertl
(Lead of G2F) is frustrated because there is no single off-the-shelf
software solution to all the problems, this makes folks slow to publish,
the work is usually single year studies.

Adding UAS is not an option for most research programs. Most are focused
on genomics so adding new components is difficult. As phenomic selection
is the major focus of his program he usually hires two types of people:
Computer analysts and field managers.

Seth views UAS adoption in research as three stages:

1)  Automate what we are already doing (stand count for example)

2)  Adding new things that they cannot do manually (measurement of plant
    height, happened in 2017-2018)

3)  Phenomic selection. Use of NIR spectroscopy instead of genetic
    markers. Use phenotype to move germplasm forward.

One big question he has is how to compare data across several years. Is
it best to do this by growth stage of the plant?

1.  *<u>What do you consider the biggest barriers to entry for
    implementing a UAS into a research program? </u>*

Here’s a list:

1)  People. You need a diverse skill set. They need to get credit for
    applying their skills.

2)  Resources. People are expensive.

3)  Software.

4)  Knowledge. This really requires trans disciplinary knowledge. Not
    everyone has all the training needed.

5)  People. People are stuck in the way of thinking and do not see value
    in collecting this data.

6)  The primarily statistical challenges are temporal and spatial
    statistics/models

*<u>2. What do you consider to be the most and least promising
applications of UAS-based imaging for agricultural research?  </u>*

The least promising thing is the idea that we can automate things we
have always done/are good at doing.

The most promising are things we have already thought about. Phenomic
selection is a good example. Corn physiologists say the most important
growth stage that influences maize yield is flowering to grain fill.
Because they can collect data throughout the season, they find that most
of the segregation that can select on is actually before flowering
occurs.

Q: How often do you collect ground truth data?

A: Rarely. They did do a lot of this at first. They still collect ground
truth data on traits we have always measured and for new traits that
they might want to correlated drones to. They find no need to measure
the same trait twice with two different methods if both provide adequate
results. The key is: How do you validate the data? The only thing that
matters to a plant breeder is that the measurement is repeatable and
heritable. This can be addressed by replication. Exact height
measurement from stick and UAS is highly correlated.

All we care about is how repeatable/reliable these measurements are.
Ground truth data is more important for publication (convincing other
scientists that measurements are correct). Actual measurements are
important to plant physiologists. It really depends upon the goal.

A good description of the trade off between accuracy and throughput is
the Holly Lane manuscript.

<https://acsess.onlinelibrary.wiley.com/doi/10.1002/csc2.20514>

3.  *<u>What are some of the things you wish you had known before you
    began using a UAS for data collection?</u>*

Set up pipeline to collect data and ask biological questions after.
Genomics and near-infrared spectroscopy work great in maize. You can
apply lot of analysis retroactively. They developed a calibration model
for Phosphorous for example. Because they have the data they can go back
and predict which plots have low or high P after the fact.

Hire experts. His last graduate was a PhD in physics. He now has a
postdoc with a geography background. He values how everyone approaches
problems differently. That drives innovation. How to justify path… One
major question is how to compare past to present data.

Ultimately, when you go into a new space you don’t need do a lot of
background research, as there isn’t a lot to review. You will need to
make it up as you go.

The goal is to make better decisions.

> *<u>4.      What educational resources have you found most useful when
> developing your own skillset with UAS-based imaging? </u>*

Phenome force webinars are good. Plant Phenome webinars are useful. He
helped start the Plant Phenome Journal in 2016. He started Plant Phenome
because he couldn’t publish in remote sensing journals. Needs to be
journal for review of studies that combine measurement and plant
science. NAPPN. The Open Drone Data Processing Interest Group run by Dr.
David LeBauer.

The key is to represent different levels of expertise. Resources are the
number one thing that need to be created.

> *<u>5.      Are there other comments you believe would benefit an
> agricultural researcher considering implementation of a UAS into their
> research program? </u>*

NA

Q: What UAS and sensors do you use in your program?

They really like the Phantom 4 – RTK multispectral and RGB

Something to think about: Flying the multispectral camera takes 4 – 8 X
longer and takes ~30X longer to process the data.

Not sure about the importance of using hyperspectral sensors.

He would like to discourage people from investing in expensive drones
and sensors. Unfortunately, many folks can no longer purchase DJI units.
Cost to buy a comparable UAS can be 40 – 50 K.

Need people to advocate for a software, pipeline in the public sector.
Seth uses Agisoft Metashape. He really likes the hypen – Progeny – Plot
Phoenix \<- non orthomosaic method

For plot level data Filipe Matias’ package and Steve Anderson’s pipeline
are very good.

It would be good if there were a small number of very well annotated
pipelines for folks to learn from.

Q: How many GCPs do you use?

In 2017, for a 5 acre field as part of G2f they used 16 GCP. The next
year they used 40 GCP.

When canopy is closed with Maize you get black holes due to wind.
Generally the feel that 4-5 is enough.

They don’t spend a huge amount of time doing spectral correction. Not as
important in breeding applications. Need to compare across genotypes at
the same time point.

Q: How much would it cost to start a UAS program?

Phantom 4Pro \$2000

Computers \$3000 up to \$8000

Software \$Free in ArcGIS is free in academic

Agisoft Metashape \$300 Pix4D \$2000

People are the wildcard… only 1 -2 people who can do all the steps

One to fly and process and one to extract and analyze framework

What can NSF or USDA do to help?

Not well suited for addressing this question. ARPA-E or ARS are better
suited to address this.
