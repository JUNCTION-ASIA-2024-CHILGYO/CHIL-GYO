//
//  IssueSampleData.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/11/24.
//

import Foundation

extension Issue {
    static let foodPoisoning = Issue(name: "Food poisoning",
                                     script: "Pregnant women have weakened immune systems and are more vulnerable to infections, making them more susceptible to food poisoning.")
    static let fetalNerves = Issue(name: "Fetal nerves",
                             script: "Mercury in tuna can have harmful effects on the fetal nervous system development.")
    static let complicationsOfChildbirth = Issue(name: "complications of childbirth",
                               script: "Experts advise that excessive caffeine consumption during pregnancy increases the risk of low birth weight, premature birth, and natural miscarriage.")
    static let gestationalDiabetes = Issue(name: "gestational diabetes",
                                   script: "Excessive sugar intake causes weight gain, swelling, and in severe cases, gestational diabetes.")
    static let atopy = Issue(name: "atopy", script: "Studies that show that eating a lot of fast food increases the probability of diagnosing atopic dermatitis can be speculated to have an effect on the fetus. You don't have to feel guilty, but the possibility cannot be completely ruled out.")
}
