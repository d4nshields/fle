import SwiftUI

public class FLEView {
    
}

public class FLEMessage {
    
}

public class FLESettings {
    
}

protocol Feature {
    // Represents a message that a feature might need to handle.
    typealias Message = Any  // Replace with your actual message type

    // Represents settings that a feature might have.
    typealias Settings = Any  // Replace with your actual settings type

    // Initialization function
    func initialize()

    // Functions for managing the feature's session
    func startSession()
    func endSession()

    // UI-related functions
    func getUIRoute() -> String
    func getUIMenuPath() -> String
    func shouldRenderInactiveView() -> Bool
    func getView() -> FLEView  // Replace AnyView with your actual view type

    // Additional functions
    func handleMessage(_ message: FLEMessage)
    func getState() -> String  // Replace String with your actual state type
    func destroy()
    func updateSettings(_ settings: FLESettings)
}
