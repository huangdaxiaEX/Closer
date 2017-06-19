//
//  Date+Convenience.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import Foundation
import SwiftDate

extension Date {
    func ignoredTime() -> Date {
        return Date(fromDate: self, hour: 0, minute: 0, second: 0)
    }
    
    func ignoredMinute() -> Date {
        return Date(fromDate: self, minute: 0, second: 0)
    }
    
    func ignoredSecond() -> Date {
        return Date(fromDate: self, second: 0)
    }
    
    func datesInHoursOfDay(_ ignoreMinute: Bool) -> [Date] {
        let date = ignoredTime()
        var dates = [Date]()
        for hour in 0..<24 {
            if ignoreMinute {
                dates.append(Date(fromDate: self, year: self.year, month: self.month, day: self.day, hour: hour, minute: 0, second: 0))
            } else {
                let lastHour = hour == 23
                dates.append(Date(fromDate: date, year: self.year, month: self.month, day: self.day, hour: hour, minute: lastHour ? 59 : 0))
            }
        }
        return dates
    }
    
    func datesInDayOfMonth(_ ignoreHour: Bool) -> [Date] {
        let firstDay = dateOfFirstDayOfMonth()
        var dates = [Date]()
        let days = monthDays
        for day in 0..<days {
            if ignoreHour {
                dates.append(Date(fromDate: firstDay, year: self.year, month: self.month, day: firstDay.day + day))
            } else {
                let lastDay = day == days - 1
                dates.append(Date(fromDate: firstDay, year: self.year, month: self.month, day: firstDay.day + day, hour: lastDay ? 23 : 0, minute: lastDay ? 59 : 0))
            }
        }
        return dates
    }
    
    func datesInDayOfWeek(_ ignoreHour: Bool) -> [Date] {
        let monday = dateOfMonday()
        var dates = [Date]()
        let days = 7
        for day in 0..<days {
            if ignoreHour {
                dates.append(Date(fromDate: monday, year: self.year, month: self.month, day: monday.day + day, hour: 0, minute: 0, second: 0, region: ShangHaiRegion))
            } else {
                let lastDay = day == days - 1
                dates.append(Date(fromDate: monday, year: self.year, month: self.month, day: monday.day + day, hour: lastDay ? 23 : 0, minute: lastDay ? 59 : 0))
            }
        }
        return dates
    }
    
    func dateOfFirstDayOfMonth() -> Date {
        return Date(fromDate: self, year: self.year, month: self.month, day: 1, hour: 0, minute: 0, second: 0, region: ShangHaiRegion)
    }
    
    func dateOfMonday() -> Date {
        var calculateDate = self
        if weekday == 1 {
            calculateDate = self - 1.days
        }
        
        var cmp = DateComponents()
        cmp.era = calculateDate.era
        cmp.yearForWeekOfYear = calculateDate.yearForWeekOfYear
        cmp.weekOfYear = calculateDate.weekOfYear
        cmp.weekday = 2
        cmp.hour = 0
        cmp.minute = 0
        cmp.second = 0
        cmp.timeZone = TimeZoneName.asiaShanghai.timeZone
        cmp.calendar = CalendarName.gregorian.calendar
        
        let dateRegion = DateInRegion(components: cmp)
        
        return Date(timeIntervalSinceReferenceDate: dateRegion!.timeIntervalSinceReferenceDate)
    }
    
    func dateOfFirstMondayOfMonth() -> Date {
        let date = dateOfFirstDayOfMonth()
        if date.weekday == 2 {
            return date
        }
        if date.weekday == 1 {
            return date + 1.days
        }
        let offset = 5 - (date.weekday - 2) + 2
        return date + offset.days
    }
    
    func difference(to date: Date, unitFlags: NSCalendar.Unit) -> DateComponents {
        return (Date.gregorianCalendar() as NSCalendar).components(unitFlags, from: self, to: date, options: NSCalendar.Options(rawValue: 0))
    }
    
    static func gregorianCalendar() -> Calendar {
        return Calendar(identifier: .gregorian)
    }
    
    func isInSameWeek(asDate date: Date) -> Bool {
        return year == date.year && weekOfYear == date.weekOfYear
    }
    
    func isInSameMonth(asDate date: Date) -> Bool {
        return year == date.year && month == date.month
    }
    
    init(fromDate date: Date, year :Int? = nil, month: Int? = nil, day: Int? = nil, hour: Int? = nil, minute: Int? = nil, second: Int? = nil, region: TimeZone? = nil) {
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        var component = DateComponents()
        if let y = year {
            component.year = y
        } else {
            component.year = date.year
        }
        
        if let m = month {
            component.month = m
        } else {
            component.month = date.month
        }
        
        if let d = day {
            component.day = d
        } else {
            component.day = date.day
        }
        
        if let h = hour {
            component.hour = h
        } else {
            component.hour = date.hour
        }
        
        if let mi = minute {
            component.minute = mi
        } else {
            component.minute = date.minute
        }
        
        if let s = second {
            component.second = s
        } else {
            component.second = date.second
        }
        
        if let re = region {
            component.timeZone = re
        } else {
            component.timeZone = ShangHaiRegion
        }
        
        self = calendar.date(from: component) ?? date
    }
    
    init(year :Int? = nil, month: Int? = nil, day: Int? = nil, hour: Int? = nil, minute: Int? = nil, second: Int? = nil, region: TimeZone? = nil) {
        self.init(fromDate: Date(), year: year, month: month, day: day, hour: hour, minute: minute, second: second, region: region)
    }
    
}

let ShangHaiRegion = TimeZoneName.asiaShanghai.timeZone
