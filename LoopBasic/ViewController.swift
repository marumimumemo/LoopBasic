//
//  ViewController.swift
//  LoopBasic
//
//  Created by satoshi.marumoto on 2020/04/19.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for-in レンジ（終了値を含まない）
        for i in 1..<10 {
            print("i: \(i)")
        }
        
        // for-in レンジ（終了値を含む）
        for i in 1...10 {
            print("i: \(i)")
        }
        
        // 配列から要素を取り出す
        let array = [3, 5, 8, 10]

        for data in array {
            print("data: \(data)")
        }
        
        // 配列からパターンにマッチするものを取り出す
        for case 2...3 in array {
            print("2以上3以下の値です")
        }
        
        // forEach文 forEach文はreturnやbreakなどで処理を抜けることができない
        array.forEach {
            //要素が偶数であれば
            if $0 % 2 == 0 {
                print($0)
            }
        }
        
        // 辞書から全ての要素を取り出す
        let artists = ["絵画": "石田尚志", "文学": "平野啓一郎", "写真": "川内倫子", "映画": "岩井俊二"]

        for data in artists {
            print("data: \(data)")
        }
        // 辞書から全ての要素を取り出す
        for (key, data) in artists {
            print("key: \(key) value: \(data)")
        }
        // 全てのキーを取り出す
        for key in artists.keys {
            print("key: \(key)")
        }
        // 全てのバリューを取り出す
        for value in artists.values {
            print("value: \(value)")
        }
        // forEach文 forEach文はreturnやbreakなどで処理を抜けることができない
        artists.forEach {
            print($0)
        }
        
        // Stringの文字を取り出す
        for char in "Swift" {
            print(char)
        }
        
        // 飛び飛びに繰り返す for 変数 in stride(from: 開始値, to: 終了値, by: 間隔)
        for num in stride(from: 10, to: 50, by: 3) {
            print("num: \(num)")
        }
        
        // 指定したループ条件を満たしている間は繰り返す
        var count = 0
        var total = 0
        while count < 5 {
            count += 1
            total += count
        }
        print("count: \(count) total: \(total)")
        
        // まずは処理を実行した後で指定したループ条件をチェックし、満たしている間は実行する
        var count2 = 1
        repeat {
            print("処理実行") // repeat-while文のため、この処理は最低1回実行される
            count2 += 1
        } while(count2 < 1)
        
        // 条件を満たしたらループを抜ける break
        var count3 = 0
        var total3 = 0
        
        while count3 < 100 {
            count3 += 1
            total3 += count3
            if total3 > 100 {
                break
            }
        }
        print(total3)
        
        // 条件によっては処理をスキップする continue
        var count4 = 0
        var total4 = 0
        
        while count4 < 100 {
            count4 += 1
            // 偶数はスキップ
            if count4 % 2 == 0 {
                continue
            }
            total4 += count4
        }
        print(total4)
        
    }


}

