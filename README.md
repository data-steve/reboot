-   Installation
-   Contact

[![Build
Status](https://travis-ci.org/data-steve/reboot.svg?branch=master)](https://travis-ci.org/data-steve/reboot)
[![Coverage
Status](https://coveralls.io/repos/data-steve/reboot/badge.svg?branch=master)](https://coveralls.io/r/data-steve/reboot?branch=master)
<a href="https://img.shields.io/badge/Version-0.0.1-orange.svg"><img src="https://img.shields.io/badge/Version-0.0.1-orange.svg" alt="Version"/></a>
</p>
**reboot** is an extension of the pacman package to allow me to update my R packages after I've updated my version of R.

Installation
============

To download the development version of **reboot**:

Download the [zip
ball](https://github.com/data-steve/reboot/zipball/master) or [tar
ball](https://github.com/data-steve/reboot/tarball/master),
decompress and run `R CMD INSTALL` on it, or use the **pacman** package
to install the development version:

    if (!require("pacman")) install.packages("pacman")
    pacman::p_load_gh("data-steve/reboot")

Contact
=======

You are welcome to:  
- submit suggestions and bug-reports at:
<https://github.com/data-steve/reboot/issues>  
- send a pull request on: <https://github.com/data-steve/reboot/>  
- compose a friendly e-mail to: <steven.troy.simpson@gmail.com>
