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
    <td><tt>['phpqatools']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### phpqatools::default
TODO: Write usage instructions for each cookbook.

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

License and Authors
-------------------
Authors: TODO: List authors
