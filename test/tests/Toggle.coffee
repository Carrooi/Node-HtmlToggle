
describe 'Toggle', ->

	it 'should throw an error if attribute data-target does not exists', ->
		expect( -> Toggle($, '#testOne')).to.throw(Error, 'Toggle: missing data-target attribute.')

	it 'should throw an error if element from target attribute does not exists', ->
		expect( -> Toggle($, '#testTwo')).to.throw(Error, "Toggle: element '#testTwo .unknown' was not found.")

	it 'should toggle target element', ->
		Toggle($, '#testThree')
		$('#testThree a').click()
		expect($('#testThree div').is(':hidden')).to.be.true
		$('#testThree a').click()
		expect($('#testThree div').is(':visible')).to.be.true

	it 'should toggle target element and hide toggler', ->
		Toggle($, '#testFour')
		expect($('#testFour a').is(':visible')).to.be.true
		$('#testFour a').click()
		expect($('#testFour a').is(':hidden')).to.be.true