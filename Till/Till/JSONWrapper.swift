
import Foundation

public class JSONWrapper {
    public init(){}

    public func wrapp(data:NSData) -> Dictionary<String, AnyObject>{
        let serializedJSON = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        
        return serializedJSON
    }
}
