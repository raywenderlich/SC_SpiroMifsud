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

import Foundation

class Note {
  var contents: String
  let timestamp: NSDate

  // an automatically generated note title, based on the first line of the note
  var title: String {
    // split into lines
    let lines = contents.components(separatedBy: NSCharacterSet.newlines) as [String]
    // return the first
    return lines[0]
  }

  init(text: String) {
    contents = text
    timestamp = NSDate()
  }

}


// some default notes to play with
var notes = [
  Note(text: "Shopping List\r\r1. Cheese\r2. Biscuits\r3. Sausages\r4. IMPORTANT Cash for going out!\r5. -potatoes-\r6. A copy of Ray Wendlich tutorials\r7. A new iPhone\rX. A present for mum"),
  Note(text: "Meeting notes\rA long and drawn out meeting, it lasted hours and hours and hours!"),
  Note(text: "Perfection ... \n\nPerfection is achieved not when there is nothing left to add, but when there is nothing left to take away - Antoine de Saint-Exupery"),
  Note(text: "Notes on Swift\nThis new language from Apple is changing iOS development as we know it!"),
  Note(text: "Meeting notes\rA dfferent meeting, just as long and boring"),
  Note(text: "A collection of thoughts\rWhy do birds sing? Why is the sky blue? Why is it so hard to create good test data?")
]
