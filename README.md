# html-toggle

Simple toggling library for HTML, based on data attributes.

Uses [jquery](https://github.com/jquery/jquery).

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

<a href="#" data-toggle data-toggle=".languages">Show all languages</a>

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

* 1.0.0
	+ Initial version