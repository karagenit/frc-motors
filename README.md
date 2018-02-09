# frc-motors

[![Travis CI](https://img.shields.io/travis/karagenit/frc-motors.svg?style=flat-square)](https://travis-ci.org/karagenit/frc-motors)
[![Code Climate](https://img.shields.io/codeclimate/github/karagenit/frc-motors.svg?style=flat-square)](https://codeclimate.com/github/karagenit/frc-motors)
[![Gem Version](https://img.shields.io/gem/v/frc-motors.svg?style=flat-square)](https://rubygems.org/gems/frc-motors)
[![Gem](https://img.shields.io/gem/dt/frc-motors.svg?style=flat-square)](https://rubygems.org/gems/frc-motors)

Ruby Gem for Accessing FRC Motor Data

## Installation

Via RubyGems:

```
$ gem install frc-motors
```

## Usage

```
> require 'frc-motors'
=> true

> Motors::CIM
=> #<Motors::Motor:0x0056418b6e3408 @data=#<CSV::Table mode:col_or_row row_count:102>>

> Motors::CIM.find(:torque, 1.2)
=> #<CSV::Row speed:2665 torque:1.2065 current:66.878 input power:802.536 output power:336.708 efficiency:41.956 lost power:465.828>

> Motors::CIM.find(:torque, 1.2)[:current]
=> 66.878

> Motors::CIM.data
=> #<CSV::Table mode:col_or_row row_count:102>

> Motors::CIM.data.each { }
=> #<CSV::Table mode:col_or_row row_count:102>
```

## Data & Reference

All motor data is collected from [Vex Pro's tests](http://motors.vex.com). You can view the actual data files (in CSV format) used in the code [here](https://github.com/karagenit/frc-motors/tree/master/data).
