import Foundation

public extension AnyCharacteristic {
    static func selectedDiagnosticsModes(
        _ value: UInt32 = 0,
        permissions: [CharacteristicPermission] = [.read, .write],
        description: String? = "Selected Diagnostics Modes",
        format: CharacteristicFormat? = .uint32,
        unit: CharacteristicUnit? = nil,
        maxLength: Int? = nil,
        maxValue: Double? = nil,
        minValue: Double? = nil,
        minStep: Double? = nil,
        validValues: [Double] = [],
        validValuesRange: Range<Double>? = nil
    ) -> AnyCharacteristic {
        AnyCharacteristic(
            PredefinedCharacteristic.selectedDiagnosticsModes(
            value,
            permissions: permissions,
            description: description,
            format: format,
            unit: unit,
            maxLength: maxLength,
            maxValue: maxValue,
            minValue: minValue,
            minStep: minStep,
            validValues: validValues,
            validValuesRange: validValuesRange) as Characteristic)
    }
}

public extension PredefinedCharacteristic {
    static func selectedDiagnosticsModes(
        _ value: UInt32 = 0,
        permissions: [CharacteristicPermission] = [.read, .write],
        description: String? = "Selected Diagnostics Modes",
        format: CharacteristicFormat? = .uint32,
        unit: CharacteristicUnit? = nil,
        maxLength: Int? = nil,
        maxValue: Double? = nil,
        minValue: Double? = nil,
        minStep: Double? = nil,
        validValues: [Double] = [],
        validValuesRange: Range<Double>? = nil
    ) -> GenericCharacteristic<UInt32> {
        GenericCharacteristic<UInt32>(
            type: .selectedDiagnosticsModes,
            value: value,
            permissions: permissions,
            description: description,
            format: format,
            unit: unit,
            maxLength: maxLength,
            maxValue: maxValue,
            minValue: minValue,
            minStep: minStep,
            validValues: validValues,
            validValuesRange: validValuesRange)
    }
}
