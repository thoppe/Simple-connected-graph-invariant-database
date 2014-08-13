## Encyclopedia of Finite Graphs (database)

[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.11280.png)](http://dx.doi.org/10.5281/zenodo.11280)
_Simple Connected Graph Invariant database_

This is the database module for [Encyclopedia of Finite Graphs](https://github.com/thoppe/Encyclopedia-of-Finite-Graphs) project.
This contains all of the simple connected graphs up to order 10 and a large collection of their invariants stored in an SQLite database.
Up to order `n<=6`, there is a collection of "special" invariants that are stored in a custom table (see main project for details).

To extract the database, run (requires `pbzip2` and `split`)

    make extract

To compress the database again, run

    make compress

If you've cloned the Encyclopedia project, you can automatically download an updated copy of the database by running in the Encyclopedia directory:

    git submodule add https://github.com/thoppe/Simple-connected-graph-invariant-database.git database

Note we are unable to store the special invariants for larger graphs due to size constraints. 
They will have to be recomputed for `n>6`.