# Data and Code from a Survey of UAS for Phenotyping in Agriculture

This repository contains data and code supporting the findings of the study 
on the adoption of Unoccupied Aerial Systems (UAS) in agricultural research 
as reported by Lachowiec et al (2024) in The Plant Phenome Journal.

We collected data through an online survey as well as through in person interviews.

## Description of Repository Contents

### Data

Data are in the `/data` directory:

* `Ag_Drones_Codebook_14Jun2023.pdf`: Codebook providing detailed descriptions of survey questions and coding schemes. This contains detailed descriptions of the content of the two CSV files listed below. 
* `Results_Ag_Drones_2021_Survey.csv`: This is raw survey data collected from agricultural researchers regarding their use of UAS technology.
* `countries_code.csv`: Country codes used in the survey data for respondent location.
* `interviews/`: A directory containing interview transcripts and summary provided as both Microsoft Word and plain text (Markdown) formats, specifically:
   * Notes from nine one on one interviews named `<interviewee last name>)UAS_Interview.[md|docx]`
   * A summary document, `Feldman_AG2PI_InterviewSummary_2022-08-10.docx`.

### Code

Code used to process data and generate the manuscript's analysis and figures.

* `data_code.R`: R Script for preprocessing and cleaning the survey data.
* `dataAnalysis.R`: R script for statistical analysis and visualization of survey results.


## Citing this work

This repository contains data and code to support the manuscript:

> Lachowiec, J., Feldman, M.J., Matias, F.I., LeBauer, D., Gregory, A. (2024). Unoccupied aerial systems adoption in agricultural research. Zenodo. The Plant Phenome Journal Volumume 7 issue 1. e20098 doi:[10.1002/ppj2.20098](https://doi.org/10.1002/ppj2.20098)

If you use the data or code from this repository, please also cite:

> Lachowiec, J., Feldman, M.J., Matias, F.I., LeBauer, D., Gregory, A. (2024). Data and code from: Unoccupied aerial systems adoption in agricultural research. Zenodo. doi:[10.5281/zenodo.10573428](https://doi.org10.5281/zenodo.10573428)

And consider contributing cleaned data and code to this repository.

## Acknowlegements and Support

**Acknowledgments**

We thank all survey respondents for their participation. We acknowledge
the Montana State University HELPS lab for aiding in the development and
implementation of the survey.

**Funding**

This research was supported by the intramural research program of the
U.S. Department of Agriculture, National Institute of Food and
Agriculture, Agricultural Genome to Phenome Initiative (2020-70412-32615
and 2021-70412-35233). The findings and conclusions in this preliminary
presentation have not been formally disseminated by the U. S. Department
of Agriculture and should not be construed to represent any agency
determination or policy.
