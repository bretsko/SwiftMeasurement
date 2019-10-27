
import Foundation


public extension Measurement {
    
    /// uses singleton MeasurementFormatter
    /// - parameter style: There are 3 widths: long, medium, and short. For example, for English, when formatting "3 pounds" Long is "3 pounds"; medium is "3 lb"; short is "3#";
    func string(unitStyle: MeasurementFormatter.UnitStyle = .medium,
                unitOptions: MeasurementFormatter.UnitOptions = .providedUnit,
                locale: Locale = .current) -> String {
        let fmtr = MeasurementFormatter.shared(unitStyle: unitStyle, unitOptions: unitOptions, locale:locale)
        return fmtr.string(from: self)
    }
}
