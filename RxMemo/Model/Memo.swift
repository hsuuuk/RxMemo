//
//  Memo.swift
//  RxMemo
//
//  Created by 심현석 on 2023/05/19.
//

import Foundation

struct Memo: Equatable { // Equatable: 동등성 비교 프로토콜
    var content: String
    var date: Date
    var identity: String
    
    init(content: String, date: Date = Date()) {
        self.content = content
        self.date = date
        self.identity = String(date.timeIntervalSinceReferenceDate)
    }
    
    init(original: Memo, updatedContent: String) {
        self = original
        self.content = updatedContent
    }
}
