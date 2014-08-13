## Encyclopedia of Finite Graphs
### database for simple connected graphs

This is the database file for [Encyclopedia of Finite Graphs](https://github.com/thoppe/Encyclopedia-of-Finite-Graphs) project.
This contains all of the simple connected graphs up to order 10 and a large collection of their invariants stored as an integer table.
Up to order 6, there is a collection of "special" invariants there are stored in a custom table (see main project for details).

To extract the database, run (requires `pbzip2` and `split`)

    make extract

To compress the database again, run

    make compress

If you've cloned the Encyclopedia project, you can automatically download the database by running:

    git submodule add https://github.com/thoppe/Simple-connected-graph-invariant-database.git database

Note we are unable to store the special invariants for larger graphs due to size constraints. 
They will have to be recomputed for `n>6`.