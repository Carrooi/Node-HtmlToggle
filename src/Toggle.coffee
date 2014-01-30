$ = null

hasAttr = (el, name) ->
	attr = $(el).attr(name)
	return typeof attr != 'undefined' && attr != false

create = (toggler, target, event = 'click', hideToggler = false) ->
	toggler.on event, (e) ->
		e.preventDefault()
		target.toggle()

		if hideToggler
			toggler.hide()

init = (jQuery, scope = 'body') ->
	$ = jQuery

	$(scope).find('*[data-toggle]').each( (i, el) ->
		if !hasAttr(el, 'data-target')
			throw new Error 'Toggle: missing data-target attribute.'

		el = $(el)
		targetSelector = el.attr('data-target')
		target = $(targetSelector)

		if target.length == 0
			throw new Error "Toggle: element '#{targetSelector}' was not found."

		event = if hasAttr(el, 'data-event') then el.attr('data-event') else 'click'
		hideToggler = hasAttr(el, 'data-hide-toggler')

		create(el, target, event, hideToggler)

		return null
	)

if typeof module == 'object'
	module.exports = init
else
	window.Toggle = init