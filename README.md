# connect_conv

A library for python codes used for post-processing the mantle convection code (Choi & Foley, 2024). The primary goal of this study is to investigate how sustained subduction zones formed at the continent margins in early Earth.

Citation: https://doi.org/10.5281/zenodo.15411770

Accompanying manuscript: TBD

The mantle convection code used can be found [here](https://github.com/bradfordjfoley/foley-convection-code). If you do not wish to run the simulations on your end, please request the zipped data file, as it is too large to store on GitHub. The mantle convection code generates six different output files with the following structure:

| File names | 1st column | 2nd column | 3rd column | 4th column | 5th column | 6th column | 7th column | 8th column | 9th column | 
|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|
|    f       |     x      |     y      |    T       |    alpha   |    P       |    mu      | dissapation|            |            |
|    t       |     x      |     y      |   tau_tot  |   tau_xx   |   tau_zz   |   tau_xz   |            |            |            |
|    u       |     xu     |     y      |    u       |            |            |            |            |            |            |
|    y       |     x      |     yw     |    w       |    chem    |            |            |            |            |            |
|    tr      |   time     |  tracer x  |  tracer y  |            |            |            |            |            |            |
|    ha      |   time     |     y      |      T     |    chem    |    alpha   |    mu      |    tau     | dissapation|    V_rms   |

Assuming all the data files are generated, run each code to generate plots for the manuscript.
| Figure number |                 filename       |
|---------------|--------------------------------|
|   2 & 3       |  cont_centered_dudx_pcolor.py  |
|      4        |cont_centered_fineness_pcolor.py|
|      5        | fineness_before_after_plot.m   |
|      7        |           dist_firsthit.m      |
|      8        |          sz_wavelength.m       |

Any questions regarding the code can be directed to me at hxc5400@psu.edu or hchoi342@eas.gatech.edu (after June 2025)
