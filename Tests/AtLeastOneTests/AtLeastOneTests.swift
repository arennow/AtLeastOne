import XCTest
@testable import AtLeastOne

final class AtLeastOneTests: XCTestCase {
	let base = Array(1...10)
	var alo: AtLeastOne<Int>!
	
	override func setUp() {
		super.setUp()
		alo = AtLeastOne(base)
	}
	
	func testExample() {
		XCTAssertEqual(alo.first, 1)
		XCTAssertEqual(Array(alo.makeIterator()), base)
		XCTAssertEqual(alo[alo.index(alo.startIndex, offsetBy: 5, limitedBy: alo.endIndex)!], base[5])
	}
	
	static var allTests = [
		("testExample", testExample),
	]
}
