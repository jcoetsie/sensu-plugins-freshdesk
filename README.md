## Sensu-Plugins-freshdesk

[ ![Build Status](https://travis-ci.org/jcoetsie/sensu-plugins-freshdesk.svg?branch=master)](https://travis-ci.org/jcoetsie/sensu-plugins-freshdesk)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-freshdesk.svg)](http://badge.fury.io/rb/sensu-plugins-freshdesk)
[![Code Climate](https://codeclimate.com/github/jcoetsie/sensu-plugins-freshdesk/badges/gpa.svg)](https://codeclimate.com/github/jcoetsie/sensu-plugins-freshdesk)
[![Test Coverage](https://codeclimate.com/github/jcoetsie/sensu-plugins-freshdesk/badges/coverage.svg)](https://codeclimate.com/github/jcoetsie/sensu-plugins-freshdesk)
[![Dependency Status](https://gemnasium.com/jcoetsie/sensu-plugins-freshdesk.svg)](https://gemnasium.com/jcoetsie/sensu-plugins-freshdesk)
[![Codeship Status for jcoetsie/sensu-plugins-freshdesk](https://codeship.com/projects/de182970-e203-0132-9c61-4ea0dd54b93d/status?branch=master)](https://codeship.com/projects/81356)

## Functionality

## Files
 * bin/handler-freshdesk.rb

## Usage

```
{
    "freshdesk": {
        "url": "https://mydesk.freshdesk.com/api/v2",
        "username" : "login.email@freshdesk.com",
        "password": "your freshdesk password",
        "priority": 1
        "subscriptions_to_tags": false,
        "status_to_use": [2]
  }
}
```
## Installation

[Installation and Setup](http://sensu-plugins.io/docs/installation_instructions.html)


## Notes
