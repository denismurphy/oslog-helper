
# OSLogHelper

The `OSLogHelper` library is a utility for simplifying the use of the `os_log` function in iOS and macOS applications. It provides a simple, easy-to-use interface for logging messages with different levels, including `default`, `debug`, `info`, `fault`, and `error`.

## Usage

To use `OSLogHelper`, you first need to import the library in your Swift file:

`import OSLogHelper` 

You can then use the various logging functions provided by `OSLogHelper` to log messages with different levels. Here's an example of how to use the `info` function to log an informational message:

```
let log = OSLog(subsystem: "com.example.myapp", category: "MyCategory")
OSLog.info("This is an informational message", log: log)
```

You can also log error with error object

```
let log = OSLog(subsystem: "com.example.myapp", category: "MyCategory")
OSLog.exception("This is an error message", error: myError, log: log)
```

You can use the following functions for logging messages with different levels:

-   `default`
-   `debug`
-   `info`
-   `fault`
-   `error`
-   `exception`

By default, the logging functions will include the file name, function name, and line number where the log message was called.

## Compatibility

This library requires Swift 5.0 or later and is compatible with iOS 12.0 or later, macOS 10.14 or later.

## Installation

You can install `OSLogHelper` using the Swift Package Manager by adding it as a dependency in your `Package.swift` file or adding it to your Xcode project.

## Conclusion

`OSLogHelper` is a simple and lightweight utility for logging messages in iOS and macOS applications. It provides an easy-to-use interface for logging messages with different levels and includes useful information such as file name, function name, and line number. It can be useful for debugging, troubleshooting and monitoring your app.
