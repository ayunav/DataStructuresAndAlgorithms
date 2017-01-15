/*
 
 Using Regex, find VAL that is directly after XX:
 
 Randomly placed throughout the file are "XX" and values in the form "[VAL1]" where the number is varied (i.e [VAL8]).  Print out every value that occurs after an occurrence of "XX". For example:
 
 good:  "aaXXbb [VAL1]"  =>  [VAL1] would be a valid occurrence
 
 bad:  "aaXXbb [VAL1] zzz[VAL2]"  => [VAL1] is valid but [VAL2] would NOT be valid
 
 */


import UIKit


let str = "Lorem ipsum dolor sit amet, consec[VAL1]tetur adipiscing elit. XX et sapien eu risus pretium mollis. Fusce diam lacus, ornare quis dapibus in, porttitor non risus. Curabitur eleifend libero et XX venenatis. Donec malesuada lobortis ex, eget cursus[VAL2] lectus interdum a. [VAL43]Aliquam iaculis magna nec rXXisus dapibus lobortis. Aliquam aliquam magna et fringilla tincidunt. Proin urna risus, lacinia eu quam in, venenatis aliquet magna. Mauris at ex id justo lacinia maximus id id mauris. Phasellus at dolor convallis, pellentesque leo maximus, vulputate diam. In hac habitasse platea dictumst. Nullam feugiat venenatis congue. Suspendisse vestibulum ornare pretium. Sed quis [VAL24]tortor lobortis, dignissim mi eu, consequat justo. Duis nunc ipsum, aliquet semper sem vitXXae, iaculis ultrices sem. Duis rutrum porttitor dui. Suspendisse feugiat nulla ac diam tincidunt convallis. Vestibulum qua[VAL5]m urna, mattis vel ma[VAL6]gna quis, pretium placerat leo. Fusce ullaXXmcorper[VAL7] luctXXus porttitor. Vestibulum ante ipsum primis in faucibus orci luctu[VAL18]s et ultrices posuere cubilia Curae; Pellent[VAL9]esque laoreet laXXcus nunc, eget bibendum leo efficitur nec. Sed tincidunt turpis a ex eleifend congue. Praesent blandit mi nec metus convallis tempus pulvinar eu odio. Nullam mollis tellus urna, ac dign[VAL10]issim neque dapibus nec. Donec rhoncus maximus metus, ornare rhoncus metus pharetra nec. Donec congue nisl non."



func searchForValues(in str: String) -> String? {
    
    let pattern = "\\[(VAL[0-9]{1,})\\]"
    
    let regex = try! NSRegularExpression(pattern: pattern, options: [])
    
    let matches = regex.matches(in: str,
                                options: [],
                                range: NSRange(location: 0, length: str.characters.count))
    
    
    guard let range = matches.first?.range else { return nil }
    
    let r = str.index(str.startIndex, offsetBy: range.location) ..< str.index(str.startIndex, offsetBy: range.location+range.length)
    
    let value = str.substring(with: r)
    
    return value
}



func printValues(str: String) -> [String]? {
    
    var values = [String]()
    
    let pattern = "\\XX"
    
    let regex = try! NSRegularExpression(pattern: pattern, options: [])
    
    let matches = regex.matches(in: str,
                                    options: [],
                                    range: NSRange(location: 0, length: str.characters.count))
    
  
    var matchIdx = 0
    
    for _ in matches {

        let match = matches[matchIdx]
        
        let startIdx = match.range.location
        
        matchIdx+=1

        if matchIdx == matches.count {
            
            let r = str.index(str.startIndex, offsetBy: startIdx) ..< str.endIndex
            
            let lastString = str.substring(with: r)
            
            let value = searchForValues(in: lastString)
            
            if value != nil {
                values.append(value!)
            }
        } else {
            
            let followingMatch = matches[matchIdx]
            
            let endIdx = followingMatch.range.location
            
            let r = str.index(str.startIndex, offsetBy: startIdx) ..< str.index(str.startIndex, offsetBy: endIdx)
            
            let subString = str.substring(with: r)
            
            let value = searchForValues(in: subString)
            
            if value != nil {
                values.append(value!)
            }
        }
    }
    
    if values.count > 0 {
        print(values)
        return values
    } else {
        print("Values not found")
        return nil
    }
}


printValues(str: str)
