# puppet module for pypolicyd_spf

[![Build Status](https://travis-ci.org/cirrax/puppet-pypolicydspf.svg?branch=master)](https://travis-ci.org/cirrax/puppet-pypolicydspf)
[![Puppet Forge](https://img.shields.io/puppetforge/v/cirrax/pypolicydspf.svg?style=flat-square)](https://forge.puppetlabs.com/cirrax/pypolicydspf)
[![Puppet Forge](https://img.shields.io/puppetforge/dt/cirrax/pypolicydspf.svg?style=flat-square)](https://forge.puppet.com/cirrax/pypolicydspf)
[![Puppet Forge](https://img.shields.io/puppetforge/e/cirrax/pypolicydspf.svg?style=flat-square)](https://forge.puppet.com/cirrax/pypolicydspf)
[![Puppet Forge](https://img.shields.io/puppetforge/f/cirrax/pypolicydspf.svg?style=flat-square)](https://forge.puppet.com/cirrax/pypolicydspf)

#### Table of Contents

1. [Overview](#overview)
1. [Usage](#usage)
1. [Reference](#reference)
1. [Contribuiting](#contributing)


## Overview

This module is used to configure [python-postfix-policyd-spf](http://www.openspf.org/Software).

## Usage

To start using pypolicydspf you need to include the pypolicydspf main class
and tell your're postfix to use it.

A minimal example might be:

~~~
class{'pypolicydspf'}
~~~

If you like to use hiera, you can define:

~~~
---
pypolicydspf::config:
  PermError_reject: 'True'
~~~

## Reference

All classes are documented in the manifests


## Contributing

Please report bugs and feature request using GitHub issue tracker.

For pull requests, it is very much appreciated to check your Puppet manifest with puppet-lint
and the available spec tests  in order to follow the recommended Puppet style guidelines
from the Puppet Labs style guide.

### Authors

This module is mainly written by [Cirrax GmbH](https://cirrax.com).

See the [list of contributors](https://github.com/cirrax/puppet-pypolicydspf/graphs/contributors)
for a list of all contributors.
