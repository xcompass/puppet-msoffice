# MSoffice Puppet Module for Boxen

[![Build Status](https://travis-ci.org/xcompass/puppet-msoffice.png?branch=master)](https://travis-ci.org/xcompass/puppet-msoffice)

## Usage

```puppet
include msoffice
class { ‘msoffice’:
  version => ‘2011’,
  username => ‘username_for_repo’,
  password => ‘password_for_repo’,
}
```
If no username/password provided, boxen will skip installing MSOffice.

## Required Puppet Modules

* boxen

