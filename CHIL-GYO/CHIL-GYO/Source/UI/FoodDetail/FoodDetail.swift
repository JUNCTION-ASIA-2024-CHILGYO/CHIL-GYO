//
//  FoodDetail.swift
//  CHIL-GYO
//
//  Created by YunhakLee on 8/10/24.
//

import SwiftUI
import SwiftData

struct FoodDetail: View {
    @Binding var food: Food
    @Query var users: [User]
    @Environment(\.modelContext) private var modelContext
    
    @State var showDetailIssue: Bool = false
    @State var commentText: String = ""
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                Banner
                SummarySection
                BlackDivider
                IssueSection
                BlackDivider
                CommentSection
            }
        }
        .scrollIndicators(.never)
        .contentMargins(.bottom, 120, for: .automatic)
        .overlay(alignment: .bottom) {
            CommentWrite
                .frame(height: 64)
        }
        .ignoresSafeArea(.container, edges: .top)
        .background {
            Color.chilBGPrimary
                .ignoresSafeArea()
        }
        .dismissKeyboard()
        .navigationTitle("")
    }
}

private extension FoodDetail {
    
    //MARK: View - Top Banner
    
    var Banner: some View {
        food.foodImage
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: 300)
            .clipped()
    }
    
    //MARK: View - Summary Section
    
    var SummarySection: some View {
        VStack(alignment: .leading, spacing: 12) {
            SectionTitle(food.name)
            FoodNotice
        }
        .padding(16)
        .padding(.bottom, 8)
    }
    
    var FoodNotice: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 12)
                .stroke(.chilBGSecondary, lineWidth: 1.0)
            Text(food.notice)
                .font(.title3)
                .foregroundStyle(.black)
                .lineLimit(nil)
                .padding(.vertical, 8)
                .padding(.horizontal, 12)
        }
    }
    
    //MARK: View - Issue Section
    
    var IssueSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                SectionTitle("Issues")
                Spacer()
                DropdownButton
            }
                if !showDetailIssue {
                    HStack {
                        ForEach(food.issues) { issue in
                            IssueChip(issue.name)
                        }
                    }
                    .transition(.opacity)
                } else {
                    ForEach(food.issues.indices, id: \.self) { i in
                        IssueScriptSection(food.issues[i], number: i+1)
                    }
                    .transition(.opacity)
                }
        }
        .padding(16)
        .padding(.bottom, 8)
        .animation(.easeInOut(duration: 0.25), value: showDetailIssue)
    }
    
    var DropdownButton: some View {
        Button {
            toggleDropdown()
        } label: {
            Image(systemName: "chevron.down")
        }
        .tint(.black)
        .rotationEffect(showDetailIssue ? .degrees(180) : .degrees(0))
        .animation(.easeInOut(duration: 0.25), value: showDetailIssue)
    }
    
    
    func IssueChip(_ text: String) -> some View {
        Text(text)
            .font(.subheadline)
            .foregroundStyle(.white)
            .lineLimit(1)
            .fixedSize()
            .padding(.vertical, 4)
            .padding(.horizontal, 10)
            .background {
                Capsule()
                    .foregroundColor(.chilBGSecondary)
            }
    }
    
    func IssueStrokeChip(_ text: String) -> some View {
        Text(text)
            .font(.subheadline)
            .foregroundStyle(.black)
            .lineLimit(1)
            .fixedSize()
            .padding(.vertical, 4)
            .padding(.horizontal, 10)
            .background {
                Capsule()
                    .stroke(.black, lineWidth: 1)
            }
    }
    
    func IssueScriptSection(_ issue: Issue, number: Int) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            IssueStrokeChip(issue.name)
            HStack(alignment: .top, spacing: 4) {
                Text("0\(number).")
                Text(issue.script)
                    .lineLimit(nil)
            }
            .font(.system(size: 13, weight: .regular))
            .foregroundStyle(.black)
        }
        
        
    }
    
    // MARK: View - Comment Section
    
    var CommentSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            SectionTitle("Comments")
            
            VStack(spacing: 16) {
                ForEach(food.comments) { comment in
                    CommentRow(comment: comment)
                }
            }
        }
        .padding(16)
        .padding(.bottom, 8)
        .onAppear {
            if food.comments.count == 0 {
                food.comments.append(Comment.dancingRabbit)
                food.comments.append(Comment.screamingFox)
                food.comments.append(Comment.drivingLemony)
                food.comments.append(Comment.sleepingNagi)
                User.dancingRabbit.comments.append(Comment.dancingRabbit)
                User.screamingFox.comments.append(Comment.screamingFox)
                User.drivingLemony.comments.append(Comment.drivingLemony)
                User.sleepingNagi.comments.append(Comment.sleepingNagi)
            }
            print(food.comments)
        }
    }
    
    func CommentRow(comment: Comment) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 8) {
                comment.user?.userProfileImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                Text(comment.user?.userName ?? "Error")
                    .font(.subheadline)
                    .foregroundStyle(.black)
                Spacer()
                Text("\(String(describing: comment.pregnancyFeriod))W")
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)
                Text(formattedTime(comment.timestamp))
                    .font(.subheadline)
                    .foregroundStyle(Color.secondary)
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .frame(width: 44, height: 44)
                }
                .tint(.black)
            }
            
            Text(comment.comment)
                .font(.callout)
                .foregroundStyle(.black)
                .lineLimit(0)
        }
    }
    
    // MARK: View - Comment Section
    
    var CommentWrite: some View {
        CustomTextEditor(text: $commentText, backgroundColor: .clear)
            .frame(height: 29) // 원하는 높이로 조정
            .padding(12)
            .padding(.trailing, 30)
            .background {
                RoundedRectangle(cornerRadius: 16.0)
                    .foregroundStyle(Color(uiColor: UIColor.systemGray5))
            }
            .overlay(alignment: .trailing) {
                Button {
                    registerComment()
                } label: {
                    Image(systemName: "paperplane")
                        .font(.system(size: 24, weight: .regular))
                        .frame(width: 30, height: 30)
                        .padding(12)
                }
                .tint(.black)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(.chilBGPrimary)
    }
    
    // MARK: View - Common
    
    func SectionTitle(_ text: String) -> some View {
        HStack {
            Text(text)
                .font(.title2)
                .bold()
                .foregroundStyle(.black)
            Spacer()
        }
    }
    
    var BlackDivider: some View {
        Rectangle()
            .foregroundStyle(.black)
            .frame(height: 1)
    }
    
    // MARK: Computed Values
    
    var me: User {
        users[0]
    }
    
    // MARK: Action
    
    func toggleDropdown() {
        showDetailIssue.toggle()
    }
    
    func formattedTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yy.mm.D"
        return formatter.string(from: date)
    }
    
    func registerComment() {
        if commentText != "" {
            let comment = Comment(comment: commentText,
                                  pregnancyFeriod: me.pregnancyFeriod)
            modelContext.insert(comment)
            comment.user = me
            comment.food = food
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            commentText = ""
        }
    }
}

//#Preview {
//    let config = ModelConfiguration(isStoredInMemoryOnly: true)
//    let container = try! ModelContainer(for: Food.self, Comment.self, User.self, configurations: config)
//    
//    container.mainContext.insert(Food.tunaSashimi)
//    container.mainContext.insert(Comment.screamingFox)
//    container.mainContext.insert(Comment.screamingFox)
//    container.mainContext.insert(User.screamingFox)
//    
//    Food.tunaSashimi.comments.append(Comment.screamingFox)
//    Food.tunaSashimi.comments.append(Comment.screamingFox)
//    Comment.screamingFox.user = User.screamingFox
//    
//    
//    return FoodDetail()
//        .modelContainer(container)
//}
