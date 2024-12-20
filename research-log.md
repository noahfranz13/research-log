# August 26, 2024 Research Log
### General Notes
* Sent GRFP stuff to Tanmoy

### Completed
* Mostly just caught up on emails.
* Emailed Sebastian about his Table 1 in his paper
* Did the employment training

### Notes for the future
* 
# August 27, 2024 Research Log
### General Notes
* I didn't have class today so I got to work on research all day!
* I updated the `otterdb` repo so that it works with arangodb again
* Updated the OTTER API to work with the arangodb backend
* Found A LOT of mistakes in the dataset while working to get it into the website format

### Completed
* Reintegrating the dataset with arangodb (using docker so no one needs to install arangodb either!!)
* Updated the OTTER API to work with the arangodb backend
* Got nicegui app up and running with the arangodb backend

### Notes for the future
* Need to merge the branch I was working on for web-otter
* Need to message Nick and tell him what updates I made to his code to integrate better with what I had already done
# September 10, 2024 Research Log
### General Notes
* I haven't done this in a while, oops! I am still trying to build the habit...
* Over the past ~week I did a lot on the web otter front end website including
adding a search page and prettying up the home page with a sky plot.
* Today I added a classification search mechanism to the search page

### Completed
* Classification search mechanism on otter-web frontend
* Opened PRs for the minor planet checking in the SAGUARO vetting code

### Notes for the future
* Currently the classification search mechanism will grab anything with a
so-called confidence > 0. This is because we haven't defined the confidence
value in detail yet. Once we do, we should add a slider to this search page that
allows others to select the confidence threshold they want!
* Notes from the SAGUARO MP checker
  * Do we really want the MP checker to automatically run when we click the vet button?
  This seems to add a lot of time waiting.
  * How should the results of the MP checker appear on the website for the target? Right
  now I have it changing the classification to "Minor Planet / Asteroid".
# October 02, 2024 Research Log
### General Notes
* ECLE Stuff
  * I queried FIRST and NVSS for our population of 24 ECLEs. Some had FIRST data, none had NVSS data
  * I also check RACS and didn't find it useful, everything seems non constraining for our case
    * I suspect the radio emission from J0938 is just host contamination based on the RACS data and the long term lightcurve from FIRST. This is expected given it’s classification as an AGN!
    * J1241 has no RACS data but the FIRST detections concern me a little. Although at later times we definitely see the radio emission decay. Remember that the discovery date for this is the publishing date though so this first radio detection could be the actual TDE occuring and what we see is some secondary late time flare. We have no way to verify this though unfortunately. Interesting!
    * J0952 has RACS data that just looks like noise (although it’s very low SNR). The light curve appears quite variable!!
* SAGUARO
  * I finished making the minor planet checker button run an asynchronous job
  * Discussed it with Griffin and it sounds like we want to use the date of the first photometric detection of the transient, NOT the discovery date. This is because discovery date can be arbitrarily defined and/or defined differently across different surveys
  
### Completed
* Checking more radio surveys for ECLE data 

### Notes for the future
* Fix MPC button to use the first photometric detection instead of the "discovery date"
# October 03, 2024 Research Log
### General Notes
* Interesting paper on a Blazar catalog and retrieval tool: https://arxiv.org/pdf/2410.01207
* SAGUARO meeting where we went over the Kilonova vetting procedure: https://docs.google.com/document/d/1ywQV0T36jyaPrFhmlz5TcgAwjab0CCrFOC40e9_LZr4/edit?usp=sharing
* 

### Completed
* Wrote more on the OTTER Paper!!!

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 08, 2024 Research Log
### General Notes
* Studied a lot more :( 

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* Yesterday I just studied for my ISM midterm by filling out the review sheet. That's why there isn't an entry
# October 09, 2024 Research Log
### General Notes
* Spent ~1 hour in the morning studying a bit more, feeling pretty good about the exam tomorrow
* Met with Jean Somalwar -- Check into x-ray's for ECLE's

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 10, 2024 Research Log
### General Notes
* Spent an hour overviewing my study notes one last time
* Added image cutouts to the transient subpages!!! Finally figured how to do this with some hacky javascript

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 11, 2024 Research Log
### General Notes
* Added the optical photometry for Sw J1644+57
* Added some Gaia photometry for Gaia Nuclear Transient Gaia ajq

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 14, 2024 Research Log
### General Notes
* Caught up on Galaxies notes that I missed last monday
* Picked paper to present for astroph in galaxies: A paper on the relationship between TDEs and dwarf galaxy AGN

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 28, 2024 Research Log
### General Notes
* 

### Completed
* Messed with my emacs theme for probably way too long. But this will for sure make me happier looking at emacs now
* Instrumentation Midterm Studying 
	* started working on some of the problems for instrumentation studying since the midterm is this wednesday :(
	* Class and reviewed notes for instrumentation
	* Started to put together an equation sheet
* Scheduled comittee meeting for Friday
	* Zoom link, in case I can't find the email: https://arizona.zoom.us/j/9058357566

### Notes for the future
* Need to find a notecard to write equations on!

### Any Leftover notes from yesterday
* 
# October 29, 2024 Research Log
### General Notes
* Instrumentation Midterm
  * Skimmed through Ch 1 & 2 of "Measuring the Universe" and, more importantly, went through some of the problems.
  * Went to Meredith's office hours, she said focus on SNR and Plate Scale calculations which is what I have been doing. I'm a little less concerned now, hopefully it goes fine!
  * Went over some of the historical prelim questions with others
  * Made the equation notecard
* OTTER Bug Fixes
  * Created an algorithm to better scale the x and y axes on the light curve plots on the inidividual transient pages
  * Fixed some bugs where the API fails when searching for a discovery date and host. I just have those two getter methods return None now instead of crashing.
* SciServer Meeting Notes
  * Need to do Kubernetes with "Helm Chart" (???)
  * Going to do some proof of concept work
  * Next steps: Start a document on next steps and share with SciServer people

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 30, 2024 Research Log
### General Notes
* I've been messing with Helm charts and Kubernetes all morning
  * I've found that installing arangodb in the Hlem chart is non trivial :(
  * Essentially you need to isntall the CRDs separately
  ```
  # install the CRDs
  helm repo add arangodb https://arangodb.github.io/kube-arangodb
  helm repo update
  kubectl apply -f https://raw.githubusercontent.com/arangodb/kube-arangodb/master/manifests/arango-crd.yaml\
  
  # verify isntallation
  kubectl get crds | grep arango
  ```
  * everything got deleted somehow and now I'm back to square one with literally no idea how I did some 
    of the stuff from this morning

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# October 31, 2024 Research Log
### General Notes
* Helm/Kubernetes
  * `kubectl` says that arango is started but I still can't go to the url, maybe I have the wrong url?
  * Still can't seem to get the otter website running in the kubernetes server even though the ports are mapped properly I think
  * Got arangodb up and running in kubernetes but without installation
  * To see it we needed to run the following commands to expose the minikube ports
  ```
  minikube tunnel # in one terminal
  # then open another terminal and run
  kubectl expose deployment otterdb-deployment --type=LoadBalancer --port=8529
  kubectl expose deployment otterweb-deployment --type=LoadBalancer --port=80
  # then run 
  kubectl get svc
  # and go to the EXTERNAL-IP:PORT
 ```
* Slides for Committee Meeting
  * I've started putting together some update slides for my committee meeting tomorrow with just some general updates about everything I've done so far
  * Finished these
* 2nd astroph talk for Galaxies
  * Found a paper on CLAGN and started reading it

### Completed
* Everything with helm/kubernetes is kinda working now! That means more progress than yesterday! Thank you chatGPT =)

### Notes for the future
* Finish reading the paper on CLAGN and make rough slides (can finish monday morning)
* Don't forget to spend a couple hours on Astro education stuff

### Any Leftover notes from yesterday
* 
# November 01, 2024 Research Log
### General Notes
* Voted this morning so I just got in at 9am!
* But I am in the process of reading the paper on CLAGN for galaxies
  * Finished reading this and making slides
* Education Papers
  * Spent some time reading one of the education papers
  * Notes on iPad, some thoughts below
  * This jupyter notebook we will create is a form of a "lecture tutorial" or a carefully designed activity the students do after a ~20 minute lecture from the professor
  * Important to scaffold instruction, can use Question Complexity Rubric from French & Prather (2020)
  * Should use small groups all working on the same lecture tutorial
* Committee Meeting
  * Talked through progress updates with Nathan, Dave, and Mathieu. Slides for that are here: https://docs.google.com/presentation/d/1C5kgkBANZP8yYJTonxrmdb6Qt71iWLiPplWfawIZrtA/edit?usp=sharing

### Completed
* Reading education papers that Ed sent
* Reading and making slides for my astroph presentation in galaxies

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 04, 2024 Research Log
### General Notes
* Started the morning catching up on email and a quick ~30min meeting with Dave, Ed, and Jacob about next steps
* Tried to figure out helm and it still doesn't work
* class
* Meeting with collin
  * His Projects
    * AT2021sdu / AT2020zso (goal is to have paper draft by end of 2024)
    * AT2018cqh (goal is to have paper draft by end of summer)
    * ATCA Observations of AT2022lri
  * Group / Collaborative projects
    * Finish reducing and organizing 20B-377
    * Keep submitting SBs as needed
    * GRBs if Tanmoy needs us
    * AT2019qiz and AT2022cmc modeling

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 05, 2024 Research Log
### General Notes
* Most of this morning was spent preparing for observing tonight and tomorrow night!
* I just got to the mountain and talked to Joe about some special stuff with the telescope tonight since it is the first time B&C Spec is being used since they re-aluminized the mirror. Here are some notes I jotted down from that:
  1) Adjust Secondary Focus
     a) Use the guide camera to focus
     b) Can use either the switch (plus the sensitivity dial) underneath the focus number on the TCS. OR, use the white paddle by the monitors on the table
  2) Filling Dewar when it is low on pressure
     a) Get one of the tall skinny nitrogen gas containers
     b) Connect the normal LN2 tank like normal
     c) Turn on the normal LN2 tank
     d) Connect the pressurized nitrogen gas tank to the normal LN2 tank
     e) Check and make sure the release valve is fully closed, this means turn it all the way CCW until it is pretty easy to turn. This is the knob that is just underneath the two pressure sensors on the tall skinny tank
     f) Turn the big knob on the very top of the nitrogen gas tank. Make sure the pressure dial on this tall skinny tank reads ~600-800 PSI
     g) Open the release valve by turning it CW until the pressure on the normal LN2 tank reads 5-6 PSI
     h) Once the tank is done filling, close the large knob on the top of the nitrogen gas tank, then fully open the pressure dial on the same tank, then close off the connection point on the LN2 tank, then turn off the LN2 tank, then disconnect the nitrogen gas tank from the LN2 tank, finally disconnect the LN2 tank from the deward
  3) He said to be extra careful with the weather (humidity and wind) because the mirror needs to last another 3-4 years!
* Filled Dewar at 2:30pm, should fill again around 6-7pm
* While observing Collin and I helped get predicted flux densities based on the data we have reduced for GRB240825a. See plot below!


### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 07, 2024 Research Log
### General Notes
* Got down from the mountain early afternoon. Planning to catch up on ISM notes I missed today and maybe start looking into equipartition analysis a bit more.
* Started the xdisk data backup on globus. I tried last night using rsync but that seems to have failed with such a large dataset. So this is a better solution.
* Went through ISM notes I missed today.
* I will need to do the equipartition analysis at a later date then!

### Completed
* 

### Notes for the future
* Need to do the equipartition analysis on the ECLE modelling results. Should talk to Collin about this.

### Any Leftover notes from yesterday
* I didn't do a good job of taking research notes yesterday while observing, here's a summary.
* Mostly just observing, but got spectra of 16ezh and 19dsg! Will reduce ASAP and see if there are CLs
* Spent a little bit fixing some of the radio SED modeling for the ECLEs. Mostly wrote some code to choose sideband or fullband points and refit everything. Also saved the chains so I can continue doing analysis elsewhere.
* Caught up on missed class notes/work from tuesday and wednesday.
# November 08, 2024 Research Notes
## General Notes
* Most of the day at the internal symposium
* Also spent some time looking at the JWST spectra of GRB240825A that Tanmoy sent Collin and I! It was cool to use JWST data, it has such a high SNR!

## Steward Internal Symposium Notes
Each bullet will be labelled by speakers name, then notes underneath that.

### Morning Session 1
* Aaron Meisner
  * Staff astronomer at NOIRLab
  * Worked a lot on unWISE coadded images of WISE survey
  * Many more Brown Dwarfs (1 per every MS star) than previously expected
  * They've found a few SUPER COOL and SUPER low metallicity that break models

* Yu-Chia Lin
  * HICE --> High Contrast Images of Exoplanets

* Brittany Miles
  * Trying to understand how convection effects brown dwarf atmosphere
  * Every JWST wavelength probes a different pressure

* Rajat Ravi
  * The Hypergiant Star: VY Canis Majoris
  * 40 M_sun
  * Intense mass loss rate > 1e-4 M_sun/yr
  * Star in LTE up to ~60 R_sun
  * PN emission is much more extended than PO (what are PN and PO?)

* Jacob Isbell
  * Studying dusty "torus" (really a disk with some radiation driven wind)
  * LBTI has an effective resolution of a 22.8m telescope
  * Using LBTI can spatially separate shock bubbles from AGN
  * IR tracing of AGN radio jet, particularly in the Seyfert I

* Roger Angel
  * Adaptive Optics for Concentrated Solar Energy
  * Uses a 7m^2 heliostat to focus the sun light
  * AO helps fix the astigmatism
  * Images the sun as well as we can during the eclipse
  * Can also be used for CO2 capture to help climate change

* Kate Gold
  * Planetary Nubulae (PNe) Organic Chemistry
  * T_star > 30,000 K
  * Current chemical model abundances of PNe Molecular abundances are dismal
  * Has radio data from ARO 12m and other one

* Yongda Zhu
  * Epoch of Reionization: Gives details of formation and evolution of first stars, galaxies, and BHs
  * Key question: What is the ionizing photon production efficiency of galaxies? And what is it's environmental dependence?
  * Measure overdensity from JADES at cosmic noon
  * Discovered strong positive correlation between ionizing photon production efficiency and the overdensity

* Aafaque Khan
  * On ASPERA
  * Mapping OVI emission around nearby galaxies
  * Spectrograph from 101 - 106 nm
  * Flight optics are ready, 2 gratings (one is a spare) are ready but need to be installed, Great QE (for UV detectors)
  * Need 6 mos in orbit at least and that's what they have, obviously want more though if possible

* Avery Bailey
  * Modeling circumplanetary disks
  * Sites of satellite formation and the final state of planets
  * Direct observational signatures of planet formation
  * Can we simulate 3D but only in 2D by averaging over one of the dimensions?
  * 2D and 3D are fairly similar, maybe off by a factor of a few

* Rebecca Lipson
  * TIMESTEP --> Impacts and Opportunities
  * Weekly professional development meetings for undergrads
  * Summer Tech Internship to get undergrads with astro majors experience in tech
  * Helping students understand different career options
  * Apprenticeship program work with graduate students and faculty to get experience in things to get other internships

* Hina Suzuki
  * Direct calibration algorithm for ADS Interleaving
  * want to increase from 64 -> 128 Gbps

### Morning Session 2

* Allison Towner
  * Material passes through the accretion disk en route to star --> some of this will form planets instead
  * CO line emission used to predict presence of protoplanetary disk
  * Can constrain the protostellar age, assuming an isochrone model for the star (or disk?)

* Vikram Manikantan
  * SMBBHs are excellent multi-messenger sources
  * SMBBHs are difficult to confirm, not observed directly with Pulsar Timing Arrays
  * Uses simulations to understand what eccentricity looks like in SMBBHs
  * Eccentric binaries have a frequency of jet bursts that is the same as the orbital frequency of the binary

* Pranjal R.S.
  * Cluster lensing with O(1) Galaxies
  * To find lensed galaxies we can break the degeneracy between intrinsic shape and lensing squashing by looking at a radial velocity curve of the galaxy.
  * This method has been observationally confirmed.

* Eric Pearce
  * Space Domain Awareness and Survey Astronomy
  * His team has increased their search rate

* Neev Shah
  * Forming X-ray binaries
  * How do stars die?
  * A known X-ray binary is ejected from a host by a supernova that formed it, this constrains the progenitor properties
  * Using MESA to understand how the binary could have formed
  * Can also use this methodology to probe the predicted EM emission from GW events

* Antranik Sefilian
  * Interested in Probes of Planetary Systems
  * Uses ALMA to probe debris disks of proto-planetary systems
  * Their observations show that most of the inferred planets lie in a region of parameter space that we can not detect

* Sophie Lebowitz
  * AGN ionization cones at cosmic noon
  * AGN Feedback is implicated in cosmological simulations to suppress star formation, this is normally probed in the narrow line region of AGN
  * JWST provides a unique opportunity to probe the [OIII] maps of AGN ionization cones
  * Some other AGN they call "Compact Narrow Line Regions" which don't have obvious jets
    * could be a viewing angle effect
  * Hint at a less steep high redshift trend than the low redshift sample

* Kevin Hainline
  * Excited about things in the IR
  * Main conclusion is that there are way more bright galaxies at high redshift than expected

* Lily Whitler
  * More luminous high-z galaxies than expected

* Jackie Champagne
  * Exploring Cosmic Dawn with COSMOS-3D
  * Focused on A SPectroscopic survey of Biased Halos In the Reionization Era (ASPIRE)
  * Also now focused on COSMOS-3D which is a deep spectroscopic and imaging survey of the cosmos field

* Ryota Ikeda
  * Future work is going to even higher spatial resolution to map the atomic gas that may contribute to the extended [CII] line emission at large radii

* Ian Lowe
  * TIM got 8 hours of flight time at 121,000 ft
  * Tested all flight systems

* Walter Harris
  * University of Arizona Space Insitute update
  * UASI provides proposal support, project support, and development/test/mission (lab space, environmental testing, operations) support for space missions
  * Primarily focused on technology
  * Require a path to >$5M to UofA
  * Resource Identification (ex. Program management, graphics designer, engineering support, etc.)
  * Also provide support to ground based "missions"/telescopes

* Gabe Weible
  * Substellar companions --> General term for both planets and brown dwarfs
  * Uses High-Contrast Imaging techniques to separate the light between a substellar companion and it's host star
    * favors wide orbit luminous companions
  * Focused on HII 1348 in the Plieades
    * Uses LBT L' band imager
  * Find a likely very eccentric orbit and very wide orbit for the substellar companion

* Jasmin Washington
  * Atacama Compact Array Light Curves of Sgr A*
  * Ionized gas mini spiral around Sgr A*
  * Sgr A* changes on t ~ 4-27 min
  * Lightcurves show that there is also ~few month variations in ALMA Band 3-6
  * Wants to improve the model of the minispiral/extended structure for better modeling of variable point source

* Nicole Melso
  * Emission from the CGM is a challenging detection
  * Instrument optimization for the Low-z CGM --> small aperature, high grasp instrument, moderate resolution, large FOV
  * Low Surface Brightness IFS with CHaS --> IFS so every point in the image is a spectrum, designed to reach ultra-low SB
  * Future low surface brightness instrumentation are compact survet instruments for both ground and space-based spectral imaging

### Afternoon Session

* Griselda Arroyo-Chavez
  * Simulations of gas cloud collapse to

* Naz Kerkeser
  * CHaS is a Circumgalactic Hydrogen alpha spectrograph
  * Large FOV of 10'

* Steve Ertel
  * Bad weather, targets as dim as 3 Jy
  * Good weather, targets as dim as 0.5 Jy

* Azalee Bostroem
  * Wide range of acceptable values for mass loss from progenitor RSG's
  * UV probes mass loss in a more sensitive way than the optical
  * Virtually no UV observations of Hydgrogen rich SNe
  * SN2022acko
    * relatively featureless in optical
    * lot's of metal lines in UV
  * They can construct a mass loss history as a function of radius/density
# November 11, 2024 Research Log
### General Notes
* Finished up the first draft of the Helm chart
  * Seems to work on my laptop but not desktop in the office. I think this is because my desktop is still trying to use cached docker images but I'm not sure how to tell it not to
* Redid the equipartition analysis
  * Fixed the equations to use the relativistic ones from Barniol Duran without any time dependence
  * setup bootstrapping to propagate the uncertainties through

### Completed
* Sent first attempt at Helm chart to SciServer

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 12, 2024 Research Log
### General Notes
* Started working on the data reduction for Instrumentation project
  * Continued working on this, almost have it all reduced!
* Meeting with Collin
  * Everything should be backed up and organized on the HPC
  * Everything is wiped on Dec. 5 but we should be good now
  

### Completed
* 

### Notes for the future
* REMEBER TO BACKUP ANY NEW DATA REDUCTIONS ON THE HPC
* Next group meeting when Kate comes back we need to discuss how to reduce bloat or add storage on the HPC rental storage
  * note sure if there is really much bloat after looking at it with Collin though

### Any Leftover notes from yesterday
* 
# November 13, 2024 Research Log
### General Notes
* Worked on lots this morning
  * Made some nicer plots of the TDE I observed for instrumentation
  * Worked on interpreting the ECLE Radio modeling
  * Started galaxies homework
* Tanmoy's Big Boom Talk
  * GRB220101A
  * Used same model as what worked for the afterglow of GRB 221009A (The "BOAT")
    * Excess emission seen in radio/mm from the BOAT --> Models don't really match
    * Likely a reverse shock
    * Fitting with broken power law gives unexpected (or unphysical?) peak flux and peak frequnecy decline
  * GRB220101A had the same problem where there was a reverse shock excess in the radio
  * The reverse shock jet model that fixes this:
    * Two parts of the jet:
      1) Poynting-flux-dominated narrow region in middle (only 0.6 deg radius) and
      2) matter-dominated wings
  * z ~ 4.6 --> High redshift for GRBs
  * relatively successfully modelled GRB220101A with both a forward and reverse shock component
  * Opening angle is 0.6 deg, even smaller than the BOAT
  * Density is very very low, on the order of IGM density not ISM density
  * This is the narrowest opening angle of any GRB
  * Most energetic afterglow of any GRB (~10x more so than the norm)
  * All GRB Jet's should be structured, if they have this two part structure from this model is unclear but it kinda works in this case!
* Collin's Big Boom Talk
  * AT2020vwl
  * Observations consistent with non-relativistic outflow
  * First flare is likely due to tidal stream interactions, which has enough energy to shock the material
  * Second flare occurs around 1000 days --> Something has rejuvinated the radio emission
  * Origin of second flare
    1) Same outflow as first one encounters a denser region of the CNM? Density increase after Bondi radius? This is unlikely because it implies an extreme change in density of CNM
    2) Off-axis jet? 
  
### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 14, 2024 Research Log
### General Notes
* SAGUARO Meeting went well
  * We are doing a TROVE hack session tomorrow
  * MPC checker might be timing out, but I don't think so? I think it's something weird with dramatiq
* Worked on Galaxies HW 4 this morning mostly, it's so long :(((
* Grad admissions meeting with Nathan and other grad students to give feedback
* Met with Sebastian
  * He supports modeling everything in OTTER with mosfit eventually
  * I sent him the paper draft
  * He will try to install OTTER locally for development and reach out if he has questions
  * He will email Raffaella Margutti about meeting about x-ray stuff
* Started a rerun of mosfit on sdu and zso for Collin, here's the command I used for future reference
```
mpirun -np 3 mosfit -e mosfit_input/*.json -c -o mosfit_output -m tde --local-data-only --run-until-converged -N 120
```
which runs it on all of the json files in the `mosfit_input` directory, writes both chains and output parameters to `mosfit_output`, runs emcee until converged, and with 120 walkers. 

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 18, 2024 Research Log
### General Notes
* Been working on my galaxies hw
  * Dave said in class to reuse the isochrones from an earlier homework for the problem 1 cuts
* Meeting with Tanmoy
  * He corrected some of my misnomers about radio emission from ECLEs
  * I need to reread some of the ECLE papers to get a better idea of why they are *Extreme* and not just coronal lines
  * I should reach out to the Co-I's on Kate's original proposal and see if they can send it so I can get a better idea of a science question
  * I should look at the x-rays from these events  (if there are any)

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 19, 2024 Research Log
### General Notes
* On last part of galaxies homework
  * This part took forever but it's basically done, I just gotta answer the questions
* Met with Ed and Jacob about education stuff
  * Thursday we are having a mini hackathon to get some stuff started!
* Notes from OTTER meeting with Raf
  * Flux calibration is messy in X-ray
  * Different papers using the same data but arriving at different fluxes
  * Necessary parameters: time of observation, normalization for blackbody, normalization for power law, energy range of the fits, 
  * XMM has 3 telescopes on board, 
  * ASASSN-15oi (Aprajita's paper) is a good example of how bad the processing can be
	* Extensive x-ray data (XRT and XMM)
	* Both BB and powerlaw
	* Table A.2 has all the parameters needed to be recorded
  * Be very clear about if it is absorption corrected (could be time dependent), just like optical extinction correction
	* Can have multiple absorption corrections for each model parameter, in addition to being time-dependent
  * The energy band is very important!
  * Instrumental corrections are usually taken as given
	* Count rate already has the instrumental corrections
  * Use 1 keV when converting from count rate to F_nu. Unless converting for an SED use the integrated flux across the entire band
  * CANNOT go from flux back to a count rate, ever!
  * Although there is usually a single factor between flux and count rate
  * Watch out for 90% error bars! Instead of 1 sigma! 
  * Muryel's paper is a good standard to start with
* Started reading Corinna's GRB paper, it is very interesting so far!
* Started looking more into the Astrobites application process and brainstorming an outline

### Completed
* 

### Notes for the future
* Work on the astrobites statements!

### Any Leftover notes from yesterday
* 
# November 20, 2024 Research Log
### General Notes
* Been reading Corinna's GRB 220101A paper
* Wrote a first draft of my personal statement for the astrobites application
* TROVE meeting
  * Good conversation about the structure of both the API endpoints and database backend!
  * Manisha took notes in the TROVE meeting notes document


### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 21, 2024 Research Log
### General Notes
* Finishing reading and commenting on Corinna's GRB paper and added comments to it!
* Started writing my sample astrobite, I decided to do it on Megan Newsome's 22upj ECLE paper!

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 22, 2024 Research Log
### General Notes
* Editing the sample astrobite right now to try to make it tell a more cohesive story
  * Sent it around to others to read
* Started working on the helm chart
  * Still working on these updates, stuff really just doesn't seem to want to work :(
  * I think I figured it out, just need to test it. I ended up using the video here https://discuss.kubernetes.io/t/why-can-i-not-connect-to-my-service-even-though-i-have-an-endpoint/16491, super useful! May need to watch some more of those videos. 

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 25, 2024 Research Log
### General Notes
* Incorporated edits from Brock and Anni on my astrobites application statements first thing this morning
* Started working on ISM homework 3

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 26, 2024 Research Log
### General Notes
* Jeniveve, Collin, Vikram, and Brock gave me tons of comments on my statements so I'm addressing them this morning!
  * Finished this after about 3 hours, this application is taking a lot of time but I think my statements are good!

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# November 27, 2024 Research Log
### General Notes
* 

### Completed
* Astrobites application is submitted!
* Finished ISM hw 3

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 02, 2024 Research Log
### General Notes
* Fixed TNS slack bot this morning
* OTTER
  * Updated the helm chart based on the SciServer people's comments
  * Update some of the OTTER readmes to reflect changes that I've made in the past few months
  * Now been working on a better upload method for the otter API that uses a vetting collection instead of just some local directory. --> I got this done throughout the day! And am now working on adding it to the otter-web interface to make that faster and more scalable

### Completed
* 

### Notes for the future
* I NEED to do my big boom presentation tomorrow!
* Rewrote all of the vetting code but it needs to be better tested!

### Any Leftover notes from yesterday
* 
# December 03, 2024 Research Log
### General Notes
* Need to put together my Big Boom presentation today! I think it will help me figure out how to outline the further investigation into the ECLE radio properties!
  * Finished up the history and current context of our ECLE analysis
  * Had some meetings but just now getting back to making my plots prettier for the slides tomorrow!
  * Fixed the FIRST query so I queried for 5" instead of 5'. This turned up only one detection instead of all of the offset ones I had from before.
  * Fixed the radio lightcurve plots for ECLEs, need to look into a few that have two VLASS images at a single point

### Completed
* 

### Notes for the future
* Some notes on the cleaning choices I made to get rid of duplicated images from VLASS. First, after talking to Collin, we think this occurs because the 1 arcmin region surrounding the TDE is partially in the region of overlapping fields from the VLASS survey strategy tesselating. We found this by opening all of the images in ds9, locking on the WCS, and then the square images are centered on the correct location and the rectangular ones are not.
* I am deleting all of the non-square quick look VLASS images to address this for the following events: AT2018bcb, 
* For AT2022fpx, VLASS Epoch 2.1 had both a QL and SE image, I am removing the QL image because the SE image is higher quality/better reduction
* For SDSSJ1055, I did the same as for AT2022fpx
* For SDSSJ1715, I did the same as for AT2022fpx

### Any Leftover notes from yesterday
* 
# December 04, 2024 Research Log
### General Notes
* Finished up some plots for my Big Boom talk

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 06, 2024 Research Log
### General Notes
* Fixing some saguaro stuff to make it work better
* Been studying for ISM

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 07, 2024 Research Log
### General Notes
* Studying for final on a saturday afternoon :(

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 09, 2024 Research Log
### General Notes
* Went over galaxies homeworks that I got wrong to study for that final
* Spent two hours reviewing ISM notes, I think I know most of it! Definitely need to review derivation of stromgren sphere for HII regions though.

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 10, 2024 Research Log
### General Notes
* Studying for galaxies this morning, have ISM final soon
* ISM exam went well I think!
* Did a little investigating into finding host galaxies with BLAST 
  * This is worthwhile for OTTER, SAGUARO, and TROVE!
  * I'm starting by writing the code for SAGUARO but it should be similar for the others too

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 11, 2024 Research Log
### General Notes
* I rewrote the OTTER host association code to query BLAST instead of the astro-ghost database. This is because BLAST uses the same algorithm but makes the query easier and faster.
* Been working on fixing the OTTER upload and vetting stuff
  * Finished fixing and testing this!

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 12, 2024 Research Log
### General Notes
* Today's gotta be about the instrumentation project
  * Got the background noise and now working on dark noise and read noise
* Also met with Connor this morning, he was great to talk to!

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 13, 2024 Research Log
### General Notes
* Working more on reducing the data for Instrumentation project
* Started making plots and tables and writing

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 16, 2024 Research Log
### General Notes
* Finished classes for this semester! Everything is submitted!
* Implemented pydantic validator in otter. This will make the dataset more standard, easier to use, and make adding new data easier!

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 17, 2024 Research Log
### General Notes
* Space Drafts #102 advertisements: Posted on the Bluesky and sent the all steward email (scary!!)
* Completed my department course evals
* OTTER Stuff
  * Got the otter web app up and running publicly using the NiceGUI on_air feature!
  * Improved the database security with 3 users now. Unfortunately, everytime I restart the otter database I will have to redefine all of these users
	1. root: Password protected user that has admin access everywhere
	2. vetting-user: Password protected user that has access to the vetting collection and can make modifications to it. Only has read access to the transients collection.
	3. user-guest: Only has read access to the transients collection. Not password protected.
  * Read up on X-ray data reduction to try to get a better idea of the stuff Raf was requesting to be stored in OTTER. I skimmed Ch. 4 and 5 in "Handbook of X-ray Astronomy" and read some of the sections in each of those chapters in more details.
	* It sounds like xspec is the commonly used NASA software, all of their models are defined here: https://heasarc.gsfc.nasa.gov/xanadu/xspec/manual/Models.html
	* The spectral models can have multiple components that are either added or multiplied together. 
	* Integrating under the spectral models in counts/s/cm^2/energy vs. energy space gives an energy/s/cm^2 (or erg/s/cm^2), this is why we need to assume the spectral model of the source!
	* These spectral models are only accounting for unabsorbed flux, just like at other wavelengths there can be flux absorbed by Hydrogen between us and the source. For example, Aprajita reports both an unabsorbed and absorbed flux in her paper on ASASSN-15oi. This "absorbed flux" can be treated like we treat optical extinction at UVOIR wavelengths.

### Completed
* Digging into OTTER DB security seems to be in a good state now!

### Notes for the future
* Sent this message to Kate and Sebastian summarizing my thoughts

Okay I've done a lot of digging into x-ray models and rereading Aprajita's paper on ASASSN-15oi and Evan Ridley's paper on AT2017bcc and reading parts of a book on X-ray astronomy because I realized I just had a fundamental lack of understanding about how the data is taken and reduced. Both of these papers use a multicomponent powerlaw and blackbody spectral fit.
I think the biggest thing I've learned is that since these x-ray models can have multiple components there can literally be infinite possibilities for the model used. This means that I don't think that there is necessarily any way for us to standardize between models without re-reducing the data completely from scratch. Since this is the case, I don't think we need too much standardization in the xray_model keyword, instead we just need details present so astronomers who care about the nitty gritty details can go back and dig up the details. I think this means that we should define the xray_model keyword as follows:
photometry : {
	  [
		obs_type: xray,
		raw: [...],
		raw_err: [...],
		raw_unit: "ct/s"
		err_details: [...],
        date: [...],
		value: [...],
		value_err: [...],
		value_unit: "erg/s/cm^2",
		xray_model: [
			{
				model_name: "", # preferably the xspec model name
				param_names: [],
				param_values: [],
                param_value_upper_err: [],
                param_value_lower_err: [],
				param_descriptions: [],
				model_url: "" # An optional model url 
			}, ...
		]
		
	  ]
  } 
Where there is one xray_model per date/observation time since these models can be time dependent. The model name is completely arbitrary, in Aprajita's case it could be something like "pow+blackbody" whereas in the case of Evans it could be "powerlaw+bb". It is essentially just there to give people an initial hint at the type of model. The param_*  keywords will differ depending on the model but will always be the same length as eachother. In the case of a powerlaw + blackbody model the param_names would be something like [Gamma_X, F_PL, kT_BB, F_BB, R_BB] , using the parameter names from Aprajita's paper. If instead a paper only uses a power law model, the param_names would be [Gamma_X, F]. Because of the param_descriptions keyword, these could be different depending on the paper. I've made the error upper and lower limits since it seems like these fits are almost always Bayesian. Finally, the model_url  should either be a doi link or a url to e.g. the xspec docs on the model (or whatever other software).
Okay sorry this was a massive message but it kinda sums up my thoughts. I know we have been trying to avoid this type of parameter where it's extremely flexible and arbitrary but it's the best solution I've come up with to provide the necessary information about the essentially infinitely possible xray models. This definitely will not be easy to programmatically apply to data but will at least provide necessary information to people who query OTTER.
Thoughts on all of this? I wanted to get opinions and try to solidify something before taking the time to start using this schema.

### Any Leftover notes from yesterday
* 
# December 19, 2024 Research Log
### General Notes
* Started digging into how to actually format the X-ray data for OTTER
  * Organized Aprajita's X-ray data into the new schema that includes an xray_model keyword
  * Sent an email to Raf checking in about if this is a good schema plan to use
* Modelled the ECLE radio data as a single power law since all of them are decaying anyways.
  * All of them have a p consistent with 2-4 which is promising!
  * I think this means that the B5 synchrotron model from 5/2 to a break at (1-p)/2 is valid.

### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
# December 20, 2024 Research Log
### General Notes
* Talked to Collin about following up the newly identified TDE 2020ukj with VLA
  * I checked VLASS and found 
  e1 (pre-disruption): max w/in aperture = 0.402 ; RMS = 0.128
  e2 (post-disruption, dt~13d): max w/in aperture = 0.299 ; RMS = 0.131
  e3 (long post-disruption): max w/in aperture = 0.263 ; RMS = 0.109
  * The e1 data point is an upperlimit even though the RMS is slightly under the max w/in aperture * 1/3, this is because there is some weird reduction artifact in the image. 
  * We might write a DDT on this
* Found all the ZTF public data for ECLEs 
  * Trying to also query ATLAS but it is not working so great, just keeps hanging
  * Also need to scrape papers for their data if it is public





### Completed
* 

### Notes for the future
* 

### Any Leftover notes from yesterday
* 
