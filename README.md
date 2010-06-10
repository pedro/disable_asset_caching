Disable Asset Caching
=====================

This is a Rails plugin to disable asset caching for the javascript_include_tag
and stylesheet_link_tag Rails helpers. The issue with those is they just don't
scale across multiple servers.

And this is why, in glorious ASCII ART:

    Browser                   Router            Server 1             Server 2
       |                        |                  |                     |
       GET /index.html ---------|------------------>                     |
                                                    } generates all.js   |
       <--------------------------------------------                     |
       |                        |                  |                     |
       |                        |                  |                     |
       GET /javascripts/all.js -|------------------|--------------------->
                                                                          } 404!
       <------------------------------------------------------------------
       |                        |                  |                     |

To sum up: a request for a cached/collapsed asset might end up in a server that
didn't generate it yet.


Copyright (c) 2010 Pedro Belo and Terence Lee, released under the MIT license
