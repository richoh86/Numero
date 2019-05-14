/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

class Converter{
    
    func convert(_ number: Int) -> String {
        
        var result = ""
        var localNumber = number
        
        // Before Refactoring
        //        while localNumber >= 10{
        //            result += "X"
        //            localNumber = localNumber - 10
        //        }
        //
        //        if localNumber >= 9 {
        //            result += "IX"
        //            localNumber = localNumber - 9
        //        }
        //
        //        if localNumber >= 5{
        //            result += "V"
        //            localNumber = localNumber - 5
        //        }
        //
        //        if localNumber >= 4{
        //            result += "IV"
        //            localNumber = localNumber - 4
        //        }
        //
        //        while localNumber >= 1 {
        //            result += "I"
        //            localNumber = localNumber - 1
        //        }
        
        // After Refactoring
        let numberSymbols: [(number: Int, symbol: String)] =
            [(1000, "M"),
             (900, "CM"),
             (500, "D"),
             (400, "CD"),
             (100, "C"),
             (90, "XC"),
             (50, "L"),
             (40, "XL"),
             (10, "X"),
             (9, "IX"),
             (5, "V"),
             (4, "IV"),
             (1, "I")]
        
        for item in numberSymbols {
            while localNumber >= item.number {
                result += item.symbol
                localNumber = localNumber - item.number
            }
        }
        
        return result
    }
    
}

