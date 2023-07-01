# Feature Linking and Embedding (FLE) Framework

The FLE Framework is an innovative system for structuring applications in a modular way. It is designed around the idea of "trunk development", where all features that are normally developed on a branch are instead developed on a common trunk and hidden behind a feature flag.

## Concept

The main concept of the FLE Framework is to create a base application or "shell" whose primary responsibility is to embed features and deliver messages to those features based on their state (ON or OFF). When a feature is OFF, the application may provide some kind of default behaviour.

### Behaviour

Module behaviour embodies a strict requirement for modules to pass only valid data types or valid error types.    Unsafe modules are discouraged, and teams focussing their development on a single module, should strategise their programming effort to stockpile the module boundaries with edge-case test cases aligned specifically to defend the module boundaries from invalid data originating from elsewhere.

Each feature in the FLE Framework is designed as an independent module that can be switched ON or OFF. The state of the feature is managed through a feature flag. 

## Features

Features in the FLE Framework have a public interface that includes the following functions:

- `initialize()`: Set up the feature when it's loaded.
- `startSession(context: Context)`: A function that activates the feature, given some context.
- `endSession()`: Deactivates the feature.
- `getUIRoute()`: Returns a unique route to navigate to the feature's UI.
- `getUIMenuPath()`: Returns a path to place a link/button to the feature in the navigation menu.
- `shouldRenderInactiveView()`: Decides whether to render a placeholder view when the feature is OFF.
- `getView()`: Returns the feature's UI.
- `handleMessage(message: Message)`: Handles incoming messages from the broker.
- `getState()`: Returns the current state of the feature.
- `destroy()`: Performs cleanup when the feature is no longer needed.
- `updateSettings(settings: Settings)`: Updates the configurable settings of the feature.

## Future Work

This project is currently in the initial development phase. The MVP will be developed using SwiftUI with Combine. Thereafter, we plan to open-source the project and establish a specification to attract contributors and further develop the concept.

## Contributing

Please note that this project is in its early stages. We appreciate your patience and are excited about your interest in contributing! Please watch this space for contributing guidelines as the project matures.

