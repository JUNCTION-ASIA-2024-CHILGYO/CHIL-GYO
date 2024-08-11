//
//  DetailInfo.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/11/24.
//

import SwiftUI

struct DetailInfo: View {
    
    let cardName: String
        
        var body: some View {
            ScrollView {
                switch cardName {
                case "FoodCard1":
                    foodCardContent(
                        title: "Coffee for pregnant women?",
                        image: "Coffee",
                        question1: "Why should pregnant women be cautious about coffee?",
                        answer1: "The claim that coffee can be harmful to pregnant women mainly stems from the fact that caffeine hinders iron absorption and that the fetus cannot effectively metabolize caffeine. The ability to metabolize caffeine varies depending on the situation and individual constitution. While a typical adult takes about 5-6 hours to metabolize caffeine, a pregnant woman requires around 18 hours. If you usually experience palpitations or have trouble sleeping after drinking coffee, it indicates that your ability to metabolize caffeine is lower than average, and it is advisable to avoid it during pregnancy. This is especially important for pregnant women who have a history of miscarriage.",
                        question2: "Why should pregnant women be cautious about coffee?",
                        answer2: "Earlier this year, a study by NIH and Ohio State University revealed that drinking more than two cups of coffee per day before and during early pregnancy doubles the risk of miscarriage. Conversely, another study by Ohio State University concluded that consuming 1-2 cups of coffee daily during pregnancy is safe. These studies indicate that up to 1-2 cups of coffee per day is generally safe, but exceeding this amount can be risky.Since the caffeine content varies by coffee type, it's essential to check the exact amount of caffeine. The FDA limits caffeine intake for pregnant women to 200mg per day, while the Korea Food and Drug Administration recommends less than 300mg per day."
                    )
                case "FoodCard2":
                    foodCardContent(
                        title: "Coffee for pregnant women?",
                        image: "Sushi",
                        question1: "Why should pregnant women be cautious about coffee?",
                        answer1: "The claim that coffee can be harmful to pregnant women mainly stems from the fact that caffeine hinders iron absorption and that the fetus cannot effectively metabolize caffeine. The ability to metabolize caffeine varies depending on the situation and individual constitution. While a typical adult takes about 5-6 hours to metabolize caffeine, a pregnant woman requires around 18 hours. If you usually experience palpitations or have trouble sleeping after drinking coffee, it indicates that your ability to metabolize caffeine is lower than average, and it is advisable to avoid it during pregnancy. This is especially important for pregnant women who have a history of miscarriage.",
                        question2: "Why should pregnant women be cautious about coffee?",
                        answer2: "Earlier this year, a study by NIH and Ohio State University revealed that drinking more than two cups of coffee per day before and during early pregnancy doubles the risk of miscarriage. Conversely, another study by Ohio State University concluded that consuming 1-2 cups of coffee daily during pregnancy is safe. These studies indicate that up to 1-2 cups of coffee per day is generally safe, but exceeding this amount can be risky.Since the caffeine content varies by coffee type, it's essential to check the exact amount of caffeine. The FDA limits caffeine intake for pregnant women to 200mg per day, while the Korea Food and Drug Administration recommends less than 300mg per day."
                    )
                case "FoodCard3":
                    foodCardContent(
                        title: "Coffee for pregnant women?",
                        image: "Juice",
                        question1: "Why should pregnant women be cautious about coffee?",
                        answer1: "The claim that coffee can be harmful to pregnant women mainly stems from the fact that caffeine hinders iron absorption and that the fetus cannot effectively metabolize caffeine. The ability to metabolize caffeine varies depending on the situation and individual constitution. While a typical adult takes about 5-6 hours to metabolize caffeine, a pregnant woman requires around 18 hours. If you usually experience palpitations or have trouble sleeping after drinking coffee, it indicates that your ability to metabolize caffeine is lower than average, and it is advisable to avoid it during pregnancy. This is especially important for pregnant women who have a history of miscarriage.",
                        question2: "Why should pregnant women be cautious about coffee?",
                        answer2: "Earlier this year, a study by NIH and Ohio State University revealed that drinking more than two cups of coffee per day before and during early pregnancy doubles the risk of miscarriage. Conversely, another study by Ohio State University concluded that consuming 1-2 cups of coffee daily during pregnancy is safe. These studies indicate that up to 1-2 cups of coffee per day is generally safe, but exceeding this amount can be risky.Since the caffeine content varies by coffee type, it's essential to check the exact amount of caffeine. The FDA limits caffeine intake for pregnant women to 200mg per day, while the Korea Food and Drug Administration recommends less than 300mg per day."
                    )
                case "FoodCard4":
                    foodCardContent(
                        title: "Coffee for pregnant women?",
                        image: "Cookie",
                        question1: "Why should pregnant women be cautious about coffee?",
                        answer1: "The claim that coffee can be harmful to pregnant women mainly stems from the fact that caffeine hinders iron absorption and that the fetus cannot effectively metabolize caffeine. The ability to metabolize caffeine varies depending on the situation and individual constitution. While a typical adult takes about 5-6 hours to metabolize caffeine, a pregnant woman requires around 18 hours. If you usually experience palpitations or have trouble sleeping after drinking coffee, it indicates that your ability to metabolize caffeine is lower than average, and it is advisable to avoid it during pregnancy. This is especially important for pregnant women who have a history of miscarriage.",
                        question2: "Why should pregnant women be cautious about coffee?",
                        answer2: "Earlier this year, a study by NIH and Ohio State University revealed that drinking more than two cups of coffee per day before and during early pregnancy doubles the risk of miscarriage. Conversely, another study by Ohio State University concluded that consuming 1-2 cups of coffee daily during pregnancy is safe. These studies indicate that up to 1-2 cups of coffee per day is generally safe, but exceeding this amount can be risky.Since the caffeine content varies by coffee type, it's essential to check the exact amount of caffeine. The FDA limits caffeine intake for pregnant women to 200mg per day, while the Korea Food and Drug Administration recommends less than 300mg per day."
                    )
                case "FoodCard5":
                    foodCardContent(
                        title: "Coffee for pregnant women?",
                        image: "Egg",
                        question1: "Why should pregnant women be cautious about coffee?",
                        answer1: "The claim that coffee can be harmful to pregnant women mainly stems from the fact that caffeine hinders iron absorption and that the fetus cannot effectively metabolize caffeine. The ability to metabolize caffeine varies depending on the situation and individual constitution. While a typical adult takes about 5-6 hours to metabolize caffeine, a pregnant woman requires around 18 hours. If you usually experience palpitations or have trouble sleeping after drinking coffee, it indicates that your ability to metabolize caffeine is lower than average, and it is advisable to avoid it during pregnancy. This is especially important for pregnant women who have a history of miscarriage.",
                        question2: "Why should pregnant women be cautious about coffee?",
                        answer2: "Earlier this year, a study by NIH and Ohio State University revealed that drinking more than two cups of coffee per day before and during early pregnancy doubles the risk of miscarriage. Conversely, another study by Ohio State University concluded that consuming 1-2 cups of coffee daily during pregnancy is safe. These studies indicate that up to 1-2 cups of coffee per day is generally safe, but exceeding this amount can be risky.Since the caffeine content varies by coffee type, it's essential to check the exact amount of caffeine. The FDA limits caffeine intake for pregnant women to 200mg per day, while the Korea Food and Drug Administration recommends less than 300mg per day."
                    )
                default:
                    Text("No information available")
                }
            }
        }
        
        @ViewBuilder
        func foodCardContent(title: String, image: String, question1: String, answer1: String, question2: String, answer2: String) -> some View {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    Spacer()
                    Image(image)
                    Spacer()
                }
                
                Text(question1)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(answer1)
                    .foregroundColor(.gray)
                
                Text(question2)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(answer2)
                    .foregroundColor(.gray)
                
                Text("Source: Real Foods")
                    .foregroundColor(.chilGray)
            }
            .padding()
        }
    }
