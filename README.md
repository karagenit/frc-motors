# frc-motors

Ruby Gem for Accessing FRC Motor Data

## Design

- CSV Files stored in `data/` directory
- Motor class that takes motor type as constructor - table to determine which file to open based on which motor type
- Should we allow multiple motor sets like in the `vex` gem?
- get() method - takes any possible field (amps, rpm, etc) and returns a hash of variables (amps, rpm, etc) from the nearest matching row in the csv file
