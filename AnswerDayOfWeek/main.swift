//
//  main.swift
//  AnswerDayOfWeek
//
//  Created by hattori on 2017/01/11.
//  Copyright © 2017年 com.example. All rights reserved.
//

import Foundation

// NSFileHandleを使った入力
func getInputData() -> Int! {
    let input = FileHandle.standardInput
    let 入力データ = String(data: input.availableData, encoding: String.Encoding.utf8)
    let 改行除去 = 入力データ?.trimmingCharacters(in: CharacterSet.newlines)
    
    return Int(改行除去!)
}

// readLineはswiftの標準入力用関数。こっちの方が良いか
func getInputDataByReadLine() -> Int {
    let inputData = readLine()

    if inputData != nil {
        return Int(inputData!) ?? -1 // nil絶対演算子使用。Int(inputData)がnilなら-1を返す
    }
    return -1
}

print("年月日を入力すると、その日の曜日を返します。")

print("年を入力: ", terminator: "")
var 年 = getInputDataByReadLine()
print("月を入力: ", terminator: "")
var 月 = getInputDataByReadLine()
print("日を入力: ", terminator: "")
var 日 = getInputDataByReadLine()

if !(年 < 0 || 月 < 0 || 日 < 0) {
    print("入力された年月日は、" + dayOfWeek(年, 月, 日) + "です。 ")
} else {
    print("入力された値が不正です")
}




