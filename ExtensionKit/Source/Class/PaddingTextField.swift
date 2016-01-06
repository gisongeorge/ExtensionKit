//
//  PaddingTextField.swift
//  ExtensionKit
//
//  Created by Moch Xiao on 1/5/16.
//  Copyright © @2016 Moch Xiao (https://github.com/cuzv).
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

// MARK: - PaddingTextField

final public class PaddingTextField: UITextField {
    private var contentEdgeInsets = UIEdgeInsetsMake(2, 4, 2, 4)
    
    private init() {
        super.init(frame: CGRectZero)
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public convenience init(contentEdgeInsets: UIEdgeInsets) {
        self.init(frame: CGRectZero)
        self.contentEdgeInsets = contentEdgeInsets
    }
    
    public override func intrinsicContentSize() -> CGSize {
        let size = sizeThatFits(CGSizeMake(CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds)))
        let width = size.width + self.contentEdgeInsets.left + self.contentEdgeInsets.right
        let height = size.height + self.contentEdgeInsets.top + self.contentEdgeInsets.bottom
        return CGSizeMake(width, height)
    }
    
    public override func textRectForBounds(bounds: CGRect) -> CGRect {
        let width = CGRectGetWidth(bounds) + self.contentEdgeInsets.left + self.contentEdgeInsets.right
        let height = CGRectGetHeight(bounds) + self.contentEdgeInsets.top + self.contentEdgeInsets.bottom
        return CGRectMake(0, 0, width, height)
    }
    
    public override func editingRectForBounds(bounds: CGRect) -> CGRect {
        let width = CGRectGetWidth(bounds) + self.contentEdgeInsets.left + self.contentEdgeInsets.right;
        let height = CGRectGetHeight(bounds) + self.contentEdgeInsets.top + self.contentEdgeInsets.bottom;
        return CGRectMake(0, 0, width, height);
    }
}