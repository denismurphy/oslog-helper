import Foundation
import os.log

@available(iOS 12.0, *)
extension OSLog {

    public static func `default`(_ message: String, log:OSLog,file: String = #file, functionName: String = #function, lineNumber: Int = #line) -> Void {
        let smessage = logMessage(message,file: file,functionName: functionName, lineNumber: lineNumber)
        os_log("%@", log: log, type: .default,smessage)
    }
    
    public static func debug(_ message: String, log:OSLog,file: String = #file, functionName: String = #function, lineNumber: Int = #line) -> Void {
        let smessage = logMessage(message,file: file,functionName: functionName, lineNumber: lineNumber)
        os_log("%@", log: log, type: .debug,smessage)
    }
    
    public static func info(_ message: String, log:OSLog,file: String = #file, functionName: String = #function, lineNumber: Int = #line) -> Void {
        let smessage = logMessage(message,file: file,functionName: functionName, lineNumber: lineNumber)
        os_log("%@", log: log, type: .info,smessage)
    }
    
    public static func fault(_ message: String, log:OSLog,file: String = #file, functionName: String = #function, lineNumber: Int = #line) -> Void{
        let smessage = logMessage(message,file: file,functionName: functionName, lineNumber: lineNumber)
        os_log("%@", log: log, type: .fault,smessage)
    }
    
    public static func error(_ message: String, log:OSLog,file: String = #file, functionName: String = #function,lineNumber: Int = #line) -> Void{
        let smessage = logMessage(message,file: file,functionName: functionName, lineNumber: lineNumber)
        os_log("%@", log: log, type: .error, smessage)
    }
    
    public static func exception(_ message: String,error: Error, log:OSLog,file: String = #file,functionName: String = #function, lineNumber: Int = #line) -> Void{
        let smessage = logMessage(message, error:error, file: file,functionName: functionName, lineNumber: lineNumber)
        os_log("%@", log: log, type: .error, smessage)
    }
    
    fileprivate static func logMessage(_ message:String,error: Error? = nil,file: String,functionName:String, lineNumber:Int) -> String {
        
        let fileName = URL(fileURLWithPath: file).lastPathComponent
        
        guard let exceptionError = error else {
            return "[\(fileName)] [func \(functionName)] [line \(lineNumber)] : \(message)"
        }
        return "[file \(fileName)] [func \(functionName)] [line \(lineNumber)] : \(message) - \(String(describing: exceptionError))"
    }
    
}
