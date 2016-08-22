BIO 770 – Data Wrangling and Visualization Using R – Fall 2016
==============================================================

<img src="images/us_unemployment.png" style="width:50.0%" /> 

Course information
==================

|                    |                                                               |
|--------------------|---------------------------------------------------------------|
| **Instructor**     | Dr. Jeremy Van Cleve                                          |
| **E-mail**         | <jvancleve@uky.edu>                                           |
| **Phone**          | (859) 218-3020                                                |
| **Office**         | 105A MDR3                                                     |
| **Office hours**   | By appointment                                                |
|                    |                                                               |
| **Class Time**     | W 12 – 1 PM                                                   |
| **Class Location** | ASB 231                                                       |
| **Website**        | <https://github.com/vancleve/BIO770-DWVR> (github website)    |
|                    | <https://uk.instructure.com/courses/1843807> (Canvas website) |

Course description
==================

The last 15 years have seen the [R programming language](https://www.r-project.org/) rise in popularity from a language used and developed primarily by statisticians to one used and developed by anyone interested in analyzing and visualizing data from scientists and engineers to historians and journalists. This **one-credit** seminar aims to provide a brief introduction (i.e., a *crash course*) to using R for analyzing and visualizing data. As R and other scripting languages become more popular, so do tools the tools required to document, maintain, share, and replicate analyses and visualization. These activities constitute the notions of "literate programming" and "reproducible research", and we will use some of these tools, which include [`markdown`](https://daringfireball.net/projects/markdown/), [`git`](https://git-scm.com/), and others.

Prerequisites: None.

Student learning outcomes
=========================

1.  Execute commands in R
2.  Create [R Markdown](http://rmarkdown.rstudio.com/) documents that explain and reproduce analyses
3.  Wrangle and manipulate data by slicing matrices and by using the `dplyr` and `tidyr` packages
4.  Plotting using the [`ggplot2`](http://ggplot2.org/) package
5.  Visualize multidimensional data using 2D/3D plots, networks, and other tools
6.  Create easily reproducible publication quality figures without expensive applications

Course format
=============

Each week will consist of a short introduction and interactive demonstration of the concepts and tools for that week followed a short lab where students apply the concepts and tools. There may be preliminary readings to do before class for some weeks (see "Topic schedule" below); please make sure to do those so that we make the most of time in class.

Assessment
==========

|                |     |                                           |
|----------------|-----|-------------------------------------------|
| Attendance     | 20% | Two absences permitted for full credit    |
| Lab work       | 40% | Submitted as R Markdown before next class |
| Lightning talk | 40% | 4 min presentation and source for figures |
|                |     | Due by end of last day of class (12/7)    |

The assessment portion of the course has three components. 1. Class attendance. 2. Completion of the lab component that we will begin in class. This must be turned in as an R Markdown document. If there are datasets that are required for the analysis (including datasets provided as part of the lab or your own datasets), these should be provided along with the R Markdown file by adding all the files to a single compressed `zip` file. The `Rmd` or `zip` file should then be uploaded to the Canvas course website: <https://uk.instructure.com/courses/1843807>. 3. Lightning talk final presentation. The last class will be devoted to short four minute presentations of **three** figures that present data from a single dataset of your choice. The figures should be "publication quality" in terms of aesthetics (labeling, font size, colors, etc) but do not need a caption (that's what the talk is for!). The R Markdown source code and any necessary data files must be submitted to the Canvas website as a `zip` file; compiling the R Markdown file should produce the figures as they were presented during the lightning talk.

Getting help (i.e., uh, how do I...?)
=====================================

Classmates and instructor
-------------------------

1.  Start a discussion on the Canvas website. This will allow everyone to benefit from the questions and answers posed. I will monitor this discussion and post replies as necessary. Please also post your own replies too!
2.  Instructor office hours.

Internet
--------

1.  Stack Overflow (<http://stackoverflow.com/>). Programming and developer Q&A site. Search as normal for keywords, add tags enclosed in square brackets, e.g. \[ggplot\] or \[git\], to restrict results to the library or language you want answers in.
2.  Cross Validated (<http://stats.stackexchange.com/>). A site in the same family as Stack Overflow. Focused on conceptual and procedural questions in statistics (less on implementation in R or other languages).
3.  Google. The oldie but the goodie.

Useful resources
================

Books
-----

The following are some popular books on R. PDFs are available on the Canvas website.

-   Crawley, Michael J.. 2005. Statistics: An Introduction using R. Wiley
-   Dalgaard, Peter. 2008. Introductory Statistics with R. Springer
-   Murrell, Paul. 2011. R Graphics. CRC Press
-   Chang, Winston. 2013. R Graphics Cookbook. O’Reilly
-   Gandrud, Christopher. 2015. Reproducible Research with R and R Studio. CRC Press.
-   Zelterman, Daniel. 2015. Applied Multivariate Statistics with R. Springer
-   Wickham, Hadley. 2016. ggplot2. Springer
-   Phillips, Nathaniel. 2016. YaRrr! The Pirate’s Guide to R. <http://nathanieldphillips.com/thepiratesguidetor/>

Internet
--------

-   RStudio Cheatsheets (<https://www.rstudio.com/resources/cheatsheets/>). Cheatsheets for working with `ggplot2`, R Markdown, and other R packages.
-   Try R (<http://tryr.codeschool.com/>). An interactive online R tutorial.
-   FlowingData (<http://flowingdata.com/>). Articles, examples, and tutorials on data visualization by Nathan Yau.
-   Other data visualization and wrangling courses:
    -   "Data Visualization" by Kieran Healy (Duke): <http://vissoc.co/>
    -   "Visualizing Data" by Chris Adolph (UWashington): <http://faculty.washington.edu/cadolph/index.php?page=22>
    -   "Data wrangling, exploration, and analysis with R" by Jenny Bryan (UBC): <http://stat545.com/>

Topic schedule
==============

The following is the preliminary schedule of topics and will be adjusted as the semester progress.

| Session | Class Dates (W) | Topic                                               | Notes                                                                             |
|---------|-----------------|-----------------------------------------------------|-----------------------------------------------------------------------------------|
| 1       | 8/24            | Intro to course and R Markdown                      | Install R & RStudio before class                                                  |
|         |                 |                                                     | ([Installation instructions](http://stat545.com/block000_r-rstudio-install.html)) |
| 2       | 8/31            | Intro to R: data types, flow control, and functions |                                                                                   |
| 3       | 9/7             | Getting data into R with data.frames                |                                                                                   |
| 4       | 9/14            | Vectors, slicing, and map (apply)                   |                                                                                   |
| 5       | 9/21            | `dplyr` and tidy data                               |                                                                                   |
| 6       | 9/28            | `ggplot2`: intro                                    |                                                                                   |
| 7       | 10/5            | `ggplot2`: plot types                               |                                                                                   |
|         | 10/12           | **No class**                                        | (Van Cleve at Georgia Tech)                                                       |
| 8       | 10/19           | `ggplot2`: finessing figures                        |                                                                                   |
| 9       | 10/26           | Colors and heatmaps                                 |                                                                                   |
| 10      | 11/2            | Networks                                            |                                                                                   |
| 11      | 11/9            | Text manipulation: regular expressions              |                                                                                   |
| 12      | 11/16           | Work on your own data / figures                     |                                                                                   |
| 13      | 11/16           | Work on your own data / figures                     |                                                                                   |
|         | 11/23           | **No class**                                        | Thanksgiving Break                                                                |
| 14      | 11/30           | Lighting talks                                      |                                                                                   |
| 15      | 12/7            | Lighting talks                                      |                                                                                   |
|         |                 |                                                     |                                                                                   |

Course policies
===============

Excused Absences
----------------

Students need to notify the professor or instructor of absences prior to class when possible. Senate Rule 5.2.4.2 defines the following as acceptable reasons for excused absences: (a) serious illness, (b) illness or death of family member, (c) University-related trips, (d) major religious holidays, and (e) other circumstances found to fit “reasonable cause for nonattendance” by the professor. Students anticipating an absence for a major religious holiday are responsible for notifying the instructor in writing of anticipated absences due to their observance of such holidays no later than the last day in the semester to add a class. Information regarding major religious holidays may be obtained through the Ombud (859-257-3737, <http://www.uky.edu/Ombud/ForStudents_ExcusedAbsences.php>). Students are expected to withdraw from the class if more than 20% of the classes scheduled for the semester are missed (excused or unexcused) per university policy.

Verification of Absences
------------------------

Students may be asked to verify their absences in order for them to be considered excused. Senate Rule 5.2.4.2 states that faculty have the right to request “appropriate verification” when students claim an excused absence because of illness or death in the family. Appropriate notification of absences due to university-related trips is required prior to the absence.

Academic Integrity
------------------

Per university policy, students shall not plagiarize, cheat, or falsify or misuse academic records. Students are expected to adhere to University policy on cheating and plagiarism in all courses. The minimum penalty for a first offense is a zero on the assignment on which the offense occurred. If the offense is considered severe or the student has other academic offenses on their record, more serious penalties, up to suspension from the university may be imposed.

Plagiarism and cheating are serious breaches of academic conduct. Each student is advised to become familiar with the various forms of academic dishonesty as explained in the Code of Student Rights and Responsibilities. Complete information can be found at the following website: <http://www.uky.edu/Ombud>. A plea of ignorance is not acceptable as a defense against the charge of academic dishonesty. It is important that you review this information as all ideas borrowed from others need to be properly credited.

Please see Section 6.3 "Academic Offenses and Procedures" of the [University Senate Rules](http://www.uky.edu/StudentAffairs/Code/Section%20VI.pdf) for UK's policy on academic integrity

Accommodations due to disability
--------------------------------

If you have a documented disability that requires academic accommodations, please see me as soon as possible during scheduled office hours. In order to receive accommodations in this course, you must provide me with a Letter of Accommodation from the Disability Resource Center for coordination of campus disability services available to students with disabilities.

Disability Resource Center: <http://www.uky.edu/StudentAffairs/DisabilityResourceCenter/index.html>. Suite 407 Multidisciplinary Science Building (physical address: 725 Rose Street); Phone: 257‐2754; Email: <dtbeach1@uky.edu>
