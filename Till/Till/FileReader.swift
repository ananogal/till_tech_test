
import Foundation

public class FileReader {
    public init(){}
    
    public func readJson(fileName:String) -> NSData {
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "json")
        return  NSData(contentsOfFile: path!,options: .DataReadingMappedIfSafe, error: nil)!
    }
}


