//
//  RockPaperScissors - main.swift
//  Created by uemu, mireu. 
//  Copyright © yagom academy. All rights reserved.
//

func getRandomNumber() -> Int {
    return Int.random(in: 1...3)
}

func compareUserPickAndComputerPick(_ userChoice: Int, _ computerChoice: Int) -> Bool {
    switch (userChoice, computerChoice) {
    case (1,3), (2,1), (3,2):
        print("이겼습니다!")
        return true
    case (userChoice, computerChoice) where userChoice == computerChoice:
        print("비겼습니다!")
        return false
    default:
        print("졌습니다!")
        return true
    }
}

func selectMenu() -> Int {
    while true {
        print("가위(1), 바위(2), 보(3)!<종료: 0> :", terminator: " ")
        if let input = readLine(), let userChoice = Int(input) {
            return userChoice
        } else {
            print("잘못된 입력입니다. 다시 시도해주세요.")
        }
    }
}

func playRockPaperScissors() {
    let isRunning = true
    
    while isRunning {
        let computerChoice = getRandomNumber()
        let userChoice = selectMenu()
        
        if userChoice == 0 {
            print("게임 종료")
            break
        }
        
        guard userChoice >= 1 && userChoice <= 3 else {
            print("잘못된 입력입니다. 다시 시도해주세요.")
            continue
        }
        
        let result = compareUserPickAndComputerPick(userChoice, computerChoice)
        
        guard result == true else {
            continue
        }
        break
    }
}

playRockPaperScissors()
