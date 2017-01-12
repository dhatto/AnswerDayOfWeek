//
//  dayOfWeek.swift
//  AnswerDayOfWeek
//
//  Created by hattori on 2017/01/11.
//  Copyright © 2017年 com.example. All rights reserved.
//

import Foundation

func dayOfWeek(_ y:Int, _ m:Int, _ d:Int) -> String {
    var year = y, month = m

    if month < 3 {
        month += 12; year -= 1
    }
    
    let leap = year + year / 4 - year / 100 + year / 400
    let day = (leap + (13 * month + 8) / 5 + d) % 7
    let result = dayOfWeek(day)

    return result
}

func dayOfWeek(_ day:Int) -> String {
    switch day {
    case 0:
        return "日曜日"
    case 1:
        return "月曜日"
    case 2:
        return "火曜日"
    case 3:
        return "水曜日"
    case 4:
        return "木曜日"
    case 5:
        return "金曜日"
    case 6:
        return "土曜日"
    default:
        return ""
    }
}
