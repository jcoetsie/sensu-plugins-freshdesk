## Sensu-Plugins-freshdesk

[ ![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-freshdesk.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-freshdesk)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-freshdesk.svg)](http://badge.fury.io/rb/sensu-plugins-freshdesk)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-freshdesk/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-freshdesk)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-freshdesk/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-freshdesk)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-freshdesk.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-freshdesk)
[![Codeship Status for sensu-plugins/sensu-plugins-freshdesk](https://codeship.com/projects/de182970-e203-0132-9c61-4ea0dd54b93d/status?branch=master)](https://codeship.com/projects/81356)

## Functionality

## Files
 * bin/handler-freshdesk.rb

## Usage

```
{
    "freshdesk": {
        "url": "https://mydesk.freshdesk.com/api/v2",
        "username" : "login.email@freshdesk.com",
        "token": "your freshdesk token",
        "password": "your freshdesk password",
        "type": "incident",
        "priority": "urgent",
        "tags": [
            "tag1"
        ],
        "subscriptions_to_tags": false,
        "status_to_use": [2]
  }
}
```
## Installation

[Installation and Setup](http://sensu-plugins.io/docs/installation_instructions.html)


## Notes
