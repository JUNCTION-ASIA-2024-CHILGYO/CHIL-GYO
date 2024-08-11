//
//  DetailInfo.swift
//  CHIL-GYO
//
//  Created by JIN LEE on 8/11/24.
//

import SwiftUI

struct DetailInfo: View {
    
    @Binding var cardName: String?
        
        var body: some View {
            ScrollView {
                switch cardName {
                case "FoodCard1":
                    foodCardContent(
                        title: "Coffee for pregnant women?",
                        image: "Coffee",
                        question1: "Why should pregnant women be cautious about coffee?",
                        answer1: "The claim that coffee can be harmful to pregnant women mainly stems from the fact that caffeine hinders iron absorption and that the fetus cannot effectively metabolize caffeine. The ability to metabolize caffeine varies depending on the situation and individual constitution. While a typical adult takes about 5-6 hours to metabolize caffeine, a pregnant woman requires around 18 hours. If you usually experience palpitations or have trouble sleeping after drinking coffee, it indicates that your ability to metabolize caffeine is lower than average, and it is advisable to avoid it during pregnancy. This is especially important for pregnant women who have a history of miscarriage.",
                        question2: "Studies on Pregnant Women and Coffee",
                        answer2: "Earlier this year, a study by NIH and Ohio State University revealed that drinking more than two cups of coffee per day before and during early pregnancy doubles the risk of miscarriage. Conversely, another study by Ohio State University concluded that consuming 1-2 cups of coffee daily during pregnancy is safe. These studies indicate that up to 1-2 cups of coffee per day is generally safe, but exceeding this amount can be risky.Since the caffeine content varies by coffee type, it's essential to check the exact amount of caffeine. The FDA limits caffeine intake for pregnant women to 200mg per day, while the Korea Food and Drug Administration recommends less than 300mg per day."
                    )
                case "FoodCard2":
                    foodCardContent(
                        title: "Sashimi for pregnant women?",
                        image: "Sushi",
                        question1: "Why should pregnant women be cautious about sashimi?",
                        answer1: "Uncooked food poses a high risk of digestive issues, such as food poisoning, enteritis, and other infectious diseases. Particularly during the preparation process, bacteria from fish scales, shellfish shells, and other sources can be transferred to knives and cutting boards. Pregnant women need to be especially cautious with raw foods because their immune systems are weakened, making them more susceptible to bacterial and viral infections. Additionally, if they do become infected, treatment options are limited as they cannot take antibiotics. This is why experts recommend avoiding raw foods as much as possible. If you do choose to eat sushi, sashimi, or steak tartare, make sure to select places that maintain high standards of cleanliness and hygiene in their environment, ingredients, and tools. Additionally, as freshwater fish or wild-caught seafood carry a higher risk of parasitic infections, it is preferable to choose farmed seafood.",
                        question2: "",
                        answer2: ""
                    )
                case "FoodCard3":
                    foodCardContent(
                        title: "Soda for pregnant women?",
                        image: "Juice",
                        question1: "Why should pregnant women be cautious about soda?",
                        answer1: "Pregnant women who liked cola or cider are worried about whether pregnant women can drink soda. Soda contains synthetic sweeteners, colorants, and high sugar content, so at a time when the fetus in the soda grows rapidly It can adversely affect the bone growth of the fetus, cause obesity and pregnancy poisoning in pregnant women, and there is a risk of premature birth.  In addition, studies show that frequent consumption of carbonated drinks in the early stages of pregnancy increases the likelihood of asthma in babies by more than 70%, It is recommended to refrain from soda during pregnancy as the probability of atopic dermatitis increases more than twice.",
                        question2: "",
                        answer2: ""
                    )
                case "FoodCard4":
                    foodCardContent(
                        title: "Cookie for pregnant women?",
                        image: "Cookie",
                        question1: "Why should pregnant women be cautious about cookie?",
                        answer1: "Pregnant women who liked cola or cider are worried about whether pregnant women can drink soda. Soda contains synthetic sweeteners, colorants, and high sugar content, so at a time when the fetus in the soda grows rapidly It can adversely affect the bone growth of the fetus, cause obesity and pregnancy poisoning in pregnant women, and there is a risk of premature birth.  In addition, studies show that frequent consumption of carbonated drinks in the early stages of pregnancy increases the likelihood of asthma in babies by more than 70%, It is recommended to refrain from soda during pregnancy as the probability of atopic dermatitis increases more than twice.",
                        question2: "",
                        answer2: ""
                    )
                case "FoodCard5":
                    foodCardContent(
                        title: "Raw eggs for pregnant women?",
                        image: "Egg",
                        question1: "Why should pregnant women be cautious about raw eggs?",
                        answer1: "Pregnant women who liked cola or cider are worried about whether pregnant women can drink soda. Soda contains synthetic sweeteners, colorants, and high sugar content, so at a time when the fetus in the soda grows rapidly It can adversely affect the bone growth of the fetus, cause obesity and pregnancy poisoning in pregnant women, and there is a risk of premature birth.  In addition, studies show that frequent consumption of carbonated drinks in the early stages of pregnancy increases the likelihood of asthma in babies by more than 70%, It is recommended to refrain from soda during pregnancy as the probability of atopic dermatitis increases more than twice.",
                        question2: "",
                        answer2: ""
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
                    .padding(.bottom, 8)
                
                Text(answer1)
                    .foregroundColor(.gray)
                
                Text(question2)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.top, 12)
                    .padding(.bottom, 8)
                
                Text(answer2)
                    .foregroundColor(.gray)
                
                Text("Source: Real Foods")
                    .foregroundColor(.chilGray)
                    .padding(.top, 8)
            }
            .padding()
        }
    }
