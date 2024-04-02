//
//  String+HTML.swift
//  ios101-project6-tumblr
//
//  Created by Jasmine Ben-Whyte on 2/4/24.
//

import Foundation
extension String {
    func removingHTMLTags() -> String {
        // Define the regular expression pattern to match HTML tags
        let pattern = "<[^>]+>"
        
        // Create a regular expression object
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            
            // Use the regular expression to replace HTML tags with an empty string
            let range = NSRange(location: 0, length: self.utf16.count)
            let result = regex.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "")
            
            return result
        } catch {
            print("Error creating regular expression: \(error)")
            return self
        }
    }
}
