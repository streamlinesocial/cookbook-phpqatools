phpqatools Cookbook
===================

Used to install and make available a suite of PHP QA tools.

Uses composer to install and configures the $PATH as needed to make them available.

Requirements
------------

Cookbooks

- composer
- php

Attributes
----------
TODO: List you cookbook attributes here.

#### phpqatools::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['phpqatools']['install_path']</tt></td>
    <td>String</td>
    <td>Where to install the phpqatools</td>
    <td><tt>/opt/phpqatools</tt></td>
  </tr>
  <tr>
    <td><tt>['phpqatools']['git']['repository']</tt></td>
    <td>String</td>
    <td>Where to get the phpqatools composer project from (currently only git is supported)</td>
    <td><tt>https://github.com/streamlinesocial/phpqatools.git</tt></td>
  </tr>
  <tr>
    <td><tt>['phpqatools']['git']['reference']</tt></td>
    <td>String</td>
    <td>Which version of the phpqatools to fetch</td>
    <td><tt>v1.0.0</tt></td>
  </tr>
</table>

Usage
-----
#### phpqatools::default

e.g.
Just include `phpqatools` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[phpqatools]"
  ]
}
```
