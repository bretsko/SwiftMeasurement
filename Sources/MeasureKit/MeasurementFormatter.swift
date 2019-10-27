
@_exported import MinimalBase


public extension MeasurementFormatter {
    private static let _shared = MeasurementFormatter()
    
    /// Returns a singleton
    ///
    /// - parameter unitStyle:  by default
    /// - parameter unitOptions:  by default
    /// - parameter numFormatterStyle: by default .decimal
    static func shared(unitStyle: UnitStyle = .medium,
                       unitOptions: UnitOptions = .providedUnit,
                       numFormatterStyle: NumberFormatter.Style = .decimal,
                       locale: Locale = .current) -> MeasurementFormatter {
        let formatter = _shared
        formatter.unitStyle = unitStyle
        formatter.unitOptions = unitOptions
        formatter.locale = locale
        
        if let fmtr = formatter.numberFormatter {
            fmtr.numberStyle = numFormatterStyle
        } else {
            formatter.numberFormatter = NumberFormatter.shared()
            formatter.numberFormatter.numberStyle = numFormatterStyle
        }
        return formatter
    }
    
    
    /// consider just using NumberFormatter.Style as arg, not the whole NumberFormatter
    /// Returns a singleton
    ///
    ///  - parameter unitStyle:
    ///   - parameter unitOptions:
    /// - parameter numFormatter: if not specified, the number formatter is set up with NumberFormatter.Style = .decimal
    //    static func shared(with unitStyle: UnitStyle = .medium,
    //                       unitOptions: UnitOptions,
    //                       numFormatter: NumberFormatter? = nil,
    //                       locale: Locale = .current) -> MeasurementFormatter {
    //        let formatter = _shared
    //        formatter.unitStyle = unitStyle
    //        formatter.unitOptions = unitOptions
    //
    //        //TODO: NumberFormatter
    //        if let fmtr = numFormatter {
    //            formatter.numberFormatter = fmtr
    //        }
    //
    //        formatter.locale = locale
    //        return formatter
    //    }
    
    //TODO: if using arg numFormatter: NumberFormatter? = nil
    // then provide init with more params
    /// Return a shared formatter
//    static func shared(with unitStyle: UnitStyle = .medium,
//                       unitOptions: UnitOptions,
//                       numFormatterStyle: NumberFormatter.Style = .decimal,
//
//                       roundingMode: RoundingMode = .down,
//                       usesGroupingSeparator: Bool = false,
//                       minFractionDigits: Int = 0,
//                       maxFractionDigits: Int = 0,
//                       locale: Locale = .current) -> MeasurementFormatter {
//
//        let formatter = _shared
//        formatter.unitStyle = unitStyle
//        formatter.unitOptions = unitOptions
//        formatter.locale = locale
//
//        if let fmtr = formatter.numberFormatter {
//            fmtr.numberStyle = numberStyle
//            fmtr.locale = locale
//            fmtr.roundingMode = roundingMode
//            fmtr.usesGroupingSeparator = usesGroupingSeparator
//            fmtr.minFractionDigits = minFractionDigits
//            fmtr.maxFractionDigits = maxFractionDigits
//
//        } else {
//            formatter.numberFormatter = NumberFormatter.shared(numberStyle: numberStyle, locale: locale, roundingMode: roundingMode, usesGroupingSeparator: usesGroupingSeparator, minFractionDigits: minFractionDigits, maxFractionDigits: maxFractionDigits)
//        }
//        return formatter
//    }
}


