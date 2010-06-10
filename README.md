Disable Asset Caching
=====================

This is a Rails plugin to disable asset caching for the javascript_include_tag
and stylesheet_link_tag Rails helpers. The issue with those is they just don't
scale across multiple servers.

For example: a request reaches one of your servers. Rails renders the layout,
and generates "all.js" while doing so. The browser receive the HTML, parse it
and realize it need to fetch scripts, so it makes a new request for "all.js".

If that request is routed to a different server without that file, it will just
result in a 404, making your page incomplete.

Same might happen for cached/collapsed CSS files.

Copyright (c) 2010 Pedro Belo and Terence Lee, released under the MIT license
