//
//  main.swift
//  AnswerDayOfWeek
//
//  Created by hattori on 2017/01/11.
//  Copyright © 2017年 com.example. All rights reserved.
//

import Foundation

func getInputData() -> Int! {
    let input = FileHandle.standardInput
    let 入力データ = String(data: input.availableData, encoding: String.Encoding.utf8)
    let 改行除去 = 入力データ?.trimmingCharacters(in: CharacterSet.newlines)
    
    return Int(改行除去!)
}

print("年を入力: ", terminator: "")
var 年 = getInputData()
print("月を入力: ", terminator: "")
var 月 = getInputData()
print("日を入力: ", terminator: "")
var 日 = getInputData()

var 曜日 = dayOfWeek(年!, 月!, 日!)

print("入力された年月日は、" + 曜日 + "です。 ")

