[![NPM version](https://img.shields.io/npm/v/html-toggle.svg?style=flat-square)](http://badge.fury.io/js/html-toggle)
[![Dependency Status](https://img.shields.io/gemnasium/Carrooi/Node-HtmlToggle.svg?style=flat-square)](https://gemnasium.com/Carrooi/Node-HtmlToggle)
[![Build Status](https://img.shields.io/travis/Carrooi/Node-HtmlToggle.svg?style=flat-square)](https://travis-ci.org/Carrooi/Node-HtmlToggle)

[![Donate](https://img.shields.io/badge/donate-PayPal-brightgreen.svg?style=flat-square)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7UMMQ9FNVR8Z2)

# html-toggle

Simple toggling library for HTML, based on data attributes.

Uses [jquery](https://github.com/jquery/jquery).

## Help

Unfortunately I don't have any more time to maintain this repository :-( 

Don't you want to save me and this project by taking over it?

![sad cat](https://raw.githubusercontent.com/sakren/sakren.github.io/master/images/sad-kitten.jpg)

## Installation

install for commonJS environments (for example [simq](https://github.com/sakren/node-simq)):

```
$ npm install html-toggle
```

or download standalone version:
* [development](https://raw.github.com/sakren/html-toggle/master/lib/Toggle.js)
* [minified](https://raw.github.com/sakren/html-toggle/master/lib/Toggle.min.js)

## Usage

```
<script type="text/javascript">
	$(function() {
		// var Toggle = require('html-toggle');		// only for commonJS

    	Toggle(jQuery);
	});
</script>

<a href="#" data-toggle data-toggle=".languages">Show or hide all languages</a>

<ul class="languages">
	...
</ul>
```

## Hide link after first toggle

`data-hide-toggler`

```
<a href="#" data-toggle data-hide-toggler data-toggle=".languages">Show all languages</a>
```

## Specifying fire event

`data-event`

```
<a href="#" data-toggle data-event="mouseover" data-toggle=".languages">Show all languages</a>
```

## Tests

```
$ npm test
```

## Changelog

* 1.0.1
	+ Move under Carrooi organization
	+ Abandon package

* 1.0.0
	+ Initial version
