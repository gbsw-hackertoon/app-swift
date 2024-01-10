//
//  lillayView.swift
//  hack_pj
//
//  Created by 박성민 on 1/11/24.
//

import SwiftUI

struct lillayView: View {
    @State var add = ""
    var body: some View {
        VStack(spacing:30){
            Text("릴레이 소설")
                .bold()
            HStack{
                Text("흐름에 맞지 않는 내용은")
                    .font(.system(size: 15))
                    .bold()
                Text("관리자에 의해 삭제될 수 있습니다")
                    .font(.system(size: 15))
            }
            
            HStack{
                VStack{
                    TextField("다음 내용 이어쓰기",text: $add)
                }
                Spacer()
                Button{
                    
                }label: {
                    Text("작성")
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                        .foregroundStyle(.black)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black.opacity(0.5)))
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.5)))
            ScrollView{
                ZStack(alignment: .bottom) {
                    Text("asdf")
                        .frame(width: 200)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black.opacity(0.5))
                }
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    lillayView()
}
