
import XCTest
import MeasureKit

class SwiftMeasurementTests: XCTestCase {
    
    func test1() {
        
        let a = 3.0
        let b = 4.0
        let c = 7.0
        
        XCTAssertEqual(a.kilometers, Measurement<UnitLength>(value: a, unit: .kilometers))
        XCTAssertEqual(b.seconds, Measurement<UnitDuration>(value: b, unit: .seconds))
        
        XCTAssertEqual(c.grams, a.grams + b.grams)
        XCTAssertEqual(a.acres, c.acres - b.acres)
//        XCTAssertEqual(c.metersPerSecond / 7, Measurement(value: 1, unit: .metersPerSecond))
//        XCTAssertEqual(c.liters * 8, Measurement(value: 56, unit: .liters))
    }
}

//#if os(Linux)
//extension SwiftMeasurementTests {
//    static var allTests : [(String, (SwiftMeasurementTests) -> () throws -> Void)] {
//        return [
//            ("test1", test1),
//        ]
//    }
//}
//#endif
