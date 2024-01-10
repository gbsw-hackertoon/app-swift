    //
    //  jakpumView.swift
    //  hack_pj
    //
    //  Created by 박성민 on 1/11/24.
    //

    import SwiftUI

struct jakpumView: View {
    @State var toggle = false
    @State var isChapterSelected = false
    @State var isFeedbackSelected = false
    var body: some View {
        NavigationStack{
            HStack{
                NavigationLink(destination: Tab()){
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .padding()
                }
                Spacer()
            }
            Image("test")
                .resizable()
                .frame(width: 80,height: 120)
                .cornerRadius(10)
            Text("방탈출 게임에 오신 것을 환영합니다")
                .bold()
            HStack{
                Text("추리,코미디")
                    .font(.system(size: 12))
                HStack{
                    Image(systemName:"heart.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 14))
                    Text("204")
                        .font(.system(size: 14))
                        .foregroundStyle(.orange)
                }
                .padding(6)
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray))
            }.padding()
            Divider()
            HStack{
                Text("작품 소개")
                    .bold()
                    .font(.system(size: 20))
                Spacer()
                Button{
                    self.toggle.toggle()
                }label: {
                    if toggle{
                        Image(systemName: "chevron.down")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                            .padding()
                    }else{
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                            .padding()
                    }
                }
            }.padding()
            if toggle{
                Text("대한민국 어딘가, 정체를 알 수 없는 방탈출 카페가 있다. 그곳은 어떻게 찾아가는지 무슨 일이 일어나는지 누가 방문하는지도 비밀이다. 비밀에 휩싸인 이곳은 오늘도 손님을 맞이한다.")
                    .font(.system(size: 15))
                    .padding()
            }
            HStack(spacing:100){
                Button {
                    isChapterSelected.toggle()
                    if isChapterSelected {
                        isFeedbackSelected = false
                    }
                } label: {
                    Text("회차")
                        .font(.system(size: 14))
                        .foregroundStyle(.black)
                        .fontWeight(isChapterSelected ? .bold : .regular)
                }

                Button {
                    isFeedbackSelected.toggle()
                    if isFeedbackSelected {
                        isChapterSelected = false
                    }
                } label: {
                    Text("피드백")
                        .font(.system(size: 14))
                        .foregroundStyle(.black)
                        .fontWeight(isFeedbackSelected ? .bold : .regular)
                }
            }
            Divider()
            if isChapterSelected {
                HStack{
                    VStack{
                        Text("프롤로그")
                            .bold()
                        Text("2024-01-10")
                    }
                    Spacer()
                    Image(systemName: "trash")
                        .font(.system(size: 20))
                }.padding()
                Divider()
                HStack{
                    VStack{
                        Text("1화")
                            .bold()
                        Text("2024-01-11")
                    }
                    Spacer()
                    Image(systemName: "trash")
                        .font(.system(size: 20))
                }.padding()
                Divider()
            }
            if isFeedbackSelected {
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 50,height: 50)
                    Text("금마리")
                    Spacer()
                    Image(systemName: "heart")
                        .font(.system(size: 20))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 40).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.black))
                }.padding()
                HStack{
                    Text("1화부터 어쩌고저쩌고")
                }.padding()
                Divider()
            }
            Spacer()
        }
        .navigationBarBackButtonHidden()
    }
}

    #Preview {
        jakpumView()
    }
