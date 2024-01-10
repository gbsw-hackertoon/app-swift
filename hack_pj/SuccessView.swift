import SwiftUI

struct SuccessView: View {
    var image: UIImage?
    var title: String
    var selectedTags: Set<String> = []
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("등록 완료")
                    .navigationBarBackButtonHidden(true)
                Spacer()
                Text("등록이 완료되었습니다.")
                    .bold()
                    .font(.system(size: 22))
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 150, height: 200)
                    image.map {
                        Image(uiImage: $0)
                            .resizable()
                            .scaledToFill()
                            .frame(width:150, height: 200)
                            .clipped()
                    }
                }
                
                Text("\(title)")
                    .bold()
                    .font(.system(size: 22))
                HStack{
                    ForEach(Array(selectedTags), id: \.self) { tag in
                        Text("\(tag)")
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .background(Color.pink.opacity(0.2))
                            .foregroundColor(Color.pink)
                            .cornerRadius(30)
                    }
                }
                Spacer()
                HStack{
                    NavigationLink(destination: Tab()){
                        Text("돌아가기")
                            .bold()
                            .padding(EdgeInsets(top: 15, leading: 50, bottom: 15, trailing: 50))
                            .foregroundStyle(.orange)
                            .background(RoundedRectangle(cornerRadius: 5).fill(Color.white))
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.orange))
                    }
                    Button{
                        
                    }label: {
                        Text("회차 쓰기")
                            .bold()
                            .padding(EdgeInsets(top: 15, leading: 50, bottom: 15, trailing: 50))
                            .foregroundStyle(.white)
                            .background(RoundedRectangle(cornerRadius: 5).fill(Color.orange))
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.orange))
                    }
                }
                .padding()
            }
        }
    }
}
#if DEBUG
struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(
            image: UIImage(named: "sampleImage"),
            title: "Sample Title",
            selectedTags: ["Tag1", "Tag2"]
        )
    }
}
#endif
