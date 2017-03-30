[![Build Status](https://travis-ci.org/EvidentSecurity/esp-sdk-ruby.svg?branch=master)](https://travis-ci.org/EvidentSecurity/esp-sdk-ruby)
[![Gem Version](https://badge.fury.io/rb/esp-sdk-ruby.svg)](http://badge.fury.io/rb/esp-sdk-ruby)

# esp_sdk

ESP - the Ruby gem for the ESP Documentation

No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v2
- Package version: 1.0.0
- Build date: 2017-03-30T11:05:47.720-04:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build esp_sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./esp_sdk-1.0.0.gem
```
(for development, run `gem install --dev ./esp_sdk-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'esp_sdk', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'esp_sdk', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'esp_sdk'

api_instance = ESP::AlertsApi.new

report_id = 56 # Integer | Id of the Report to Return Alerts For

opts = { 
  page: {'key' => "page_example"}, # Hash<String, String> | Page Number
  filter: {'key' => "filter_example"}, # Hash<String, String> | Filter Params for Searching
  include: "include_example" # String | Included Objects
}

begin
  #Get a list of Alerts
  result = api_instance.list(report_id, opts)
  p result
rescue ESP::ApiError => e
  puts "Exception when calling AlertsApi->list: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ESP::AlertsApi* | [**list**](docs/AlertsApi.md#list) | **PUT** /v2/reports/{report_id}/alerts.json | Get a list of Alerts
*ESP::AlertsApi* | [**show**](docs/AlertsApi.md#show) | **GET** /v2/alerts/{id}.json | Show a single Alert
*ESP::CloudtraileventsApi* | [**list**](docs/CloudtraileventsApi.md#list) | **GET** /v2/alerts/{alert_id}/cloud_trail_events.json | Get a list of Cloud Trail Events
*ESP::CloudtraileventsApi* | [**show**](docs/CloudtraileventsApi.md#show) | **GET** /v2/cloud_trail_events/{id}.json | Show a single Cloud Trail Event
*ESP::DashboardApi* | [**recent**](docs/DashboardApi.md#recent) | **GET** /v2/dashboard/recent.json | 
*ESP::ExternalaccountsApi* | [**create**](docs/ExternalaccountsApi.md#create) | **POST** /v2/external_accounts.json | Create a(n) External Account
*ESP::ExternalaccountsApi* | [**destroy**](docs/ExternalaccountsApi.md#destroy) | **DELETE** /v2/external_accounts/{id}.json | Remove a(n) External Account
*ESP::ExternalaccountsApi* | [**list**](docs/ExternalaccountsApi.md#list) | **PUT** /v2/external_accounts.json | Get a list of External Accounts
*ESP::ExternalaccountsApi* | [**show**](docs/ExternalaccountsApi.md#show) | **GET** /v2/external_accounts/{id}.json | Show a single External Account
*ESP::ExternalaccountsApi* | [**update**](docs/ExternalaccountsApi.md#update) | **PATCH** /v2/external_accounts/{id}.json | Update a(n) External Account
*ESP::ExternalaccountsApi* | [**v2_external_accounts_id_complete_json_patch**](docs/ExternalaccountsApi.md#v2_external_accounts_id_complete_json_patch) | **PATCH** /v2/external_accounts/{id}/complete.json | Show the latest completed report for an External Account
*ESP::ExternalaccountsApi* | [**v2_external_accounts_subscribed_accounts_json_get**](docs/ExternalaccountsApi.md#v2_external_accounts_subscribed_accounts_json_get) | **GET** /v2/external_accounts/subscribed_accounts.json | Show a list of Subscribed Accounts
*ESP::OrganizationsApi* | [**create**](docs/OrganizationsApi.md#create) | **POST** /v2/organizations.json | Create a(n) Organization
*ESP::OrganizationsApi* | [**destroy**](docs/OrganizationsApi.md#destroy) | **DELETE** /v2/organizations/{id}.json | Remove a(n) Organization
*ESP::OrganizationsApi* | [**list**](docs/OrganizationsApi.md#list) | **PUT** /v2/organizations.json | Get a list of Organizations
*ESP::OrganizationsApi* | [**show**](docs/OrganizationsApi.md#show) | **GET** /v2/organizations/{id}.json | Show a single Organization
*ESP::OrganizationsApi* | [**update**](docs/OrganizationsApi.md#update) | **PATCH** /v2/organizations/{id}.json | Update a(n) Organization
*ESP::RegionsApi* | [**list**](docs/RegionsApi.md#list) | **PUT** /v2/regions.json | Get a list of Regions
*ESP::RegionsApi* | [**show**](docs/RegionsApi.md#show) | **GET** /v2/regions/{id}.json | Show a single Region
*ESP::SignaturesApi* | [**list**](docs/SignaturesApi.md#list) | **PUT** /v2/signatures.json | Get a list of Signatures
*ESP::SignaturesApi* | [**run**](docs/SignaturesApi.md#run) | **POST** /v2/signatures/{id}/run.json | A successful call to this API returns a list of alerts for the specific signature identified by the id parameter. The body of the request must contain a json api compliant hash of attributes with type signatures
*ESP::SignaturesApi* | [**show**](docs/SignaturesApi.md#show) | **GET** /v2/signatures/{id}.json | Show a single Signature
*ESP::StatsApi* | [**for_report**](docs/StatsApi.md#for_report) | **GET** /v2/reports/{report_id}/stats.json | A successful call to this API returns all the stats of all the alerts for a report identified by the report_id parameter. Said report contains all statistics for this alert triggered from signatures contained in all regions for the selected hour.
*ESP::StatsApi* | [**latest_for_teams**](docs/StatsApi.md#latest_for_teams) | **GET** /v2/stats/latest_for_teams.json | A successful call to this API returns all the stats for the most recent report of each team accessible by the given API key
*ESP::TeamsApi* | [**create**](docs/TeamsApi.md#create) | **POST** /v2/teams.json | Create a(n) Team
*ESP::TeamsApi* | [**destroy**](docs/TeamsApi.md#destroy) | **DELETE** /v2/teams/{id}.json | Remove a(n) Team
*ESP::TeamsApi* | [**list**](docs/TeamsApi.md#list) | **PUT** /v2/teams.json | Get a list of Teams
*ESP::TeamsApi* | [**show**](docs/TeamsApi.md#show) | **GET** /v2/teams/{id}.json | Show a single Team
*ESP::TeamsApi* | [**update**](docs/TeamsApi.md#update) | **PATCH** /v2/teams/{id}.json | Update a(n) Team


## Documentation for Models

 - [ESP::Alert](docs/Alert.md)
 - [ESP::CloudTrailEvent](docs/CloudTrailEvent.md)
 - [ESP::Dashboard](docs/Dashboard.md)
 - [ESP::ExternalAccount](docs/ExternalAccount.md)
 - [ESP::Organization](docs/Organization.md)
 - [ESP::PaginatedCollection](docs/PaginatedCollection.md)
 - [ESP::Region](docs/Region.md)
 - [ESP::Report](docs/Report.md)
 - [ESP::Signature](docs/Signature.md)
 - [ESP::Stat](docs/Stat.md)
 - [ESP::StatCustomSignature](docs/StatCustomSignature.md)
 - [ESP::StatRegion](docs/StatRegion.md)
 - [ESP::StatService](docs/StatService.md)
 - [ESP::StatSignature](docs/StatSignature.md)
 - [ESP::Team](docs/Team.md)


## Documentation for Authorization

 All endpoints do not require authorization.

