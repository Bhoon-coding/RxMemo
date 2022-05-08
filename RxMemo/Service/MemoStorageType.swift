//
//  MemoStorageType.swift
//  RxMemo
//
//  Created by BH on 2022/05/08.
//

import Foundation
import RxSwift

protocol MemoStorageType {
    @discardableResult
    func createMemo(content: String) -> Observable<Memo> // <- 구독자가 작업결과를 원하는 방식으로 처리할 수 있게됨.
    
    @discardableResult
    func momoList() -> Observable<[Memo]>
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
    
}
