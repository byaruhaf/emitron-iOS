/// Copyright (c) 2019 Razeware LLC
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

import SwiftUI

private enum Layout {
  struct Padding {
    let overall: Length = 12
    let textTrailing: Length = 2
  }

  static let padding = Padding()
  static let cornerRadius: Length = 9
  static let imageSize: Length = 15
}

struct FilterView: View {
  @EnvironmentObject var filters: Filters
  var filter: Filter
  
  var body: some View {
    HStack {
      Text(filter.filterName)
        .foregroundColor(.appBlack)
        .font(.uiBodyCustom)
        .padding([.trailing], Layout.padding.textTrailing)
      
      Spacer()
      
      CheckmarkView(filter: filter)
    }
      .frame(minHeight: 46)
  }
}

#if DEBUG
struct FilterView_Previews: PreviewProvider {
  static var previews: some View {
    // TODO: Give this a proper value
    FilterView(filter: Filter.testFilter)
  }
}
#endif
