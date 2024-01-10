import SwiftUI
import PhotosUI

struct CreateView: View {
    @State private var image: UIImage?
    @State private var selectedItems: [PhotosPickerItem] = []
    @State private var title: String = ""
    @State private var introduce: String = ""
    let topallTags = ["판타지","SF","로맨스","호러","추리"]
    let bottomallTags = ["미스테리","코미디","스릴러","기타"]
    @State private var selectTag: Set<String> = []
    @State private var showingAlert = false
    @State private var alertMessage = ""
    @State private var issucces = false
    var body: some View {
        NavigationStack{
            VStack{
                Text("작품 등록")
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 90, height: 130)
                    image.map {
                        Image(uiImage: $0)
                            .resizable()
                            .scaledToFill()
                            .frame(width:90, height: 130)
                            .clipped()
                    }
                }
                .padding([.top,.bottom],10)
                PhotosPicker(
                    selection: $selectedItems,
                    matching: .images
                ) {
                    Text("작품의 표지를 선택해주세요")
                }
                .onChange(of: selectedItems) { oldValue, newValue in
                    guard let item = selectedItems.first else {
                        return
                    }
                    item.loadTransferable(type: Data.self) { result in
                        switch result {
                        case .success(let data):
                            if let data = data {
                                self.image = UIImage(data: data)
                            } else {
                                print("Data is nil")
                            }
                        case .failure(let failure):
                            fatalError("\(failure)")
                        }
                    }
                }
                HStack{
                    Text("작품명")
                        .bold()
                        .padding([.leading])
                    Spacer()
                }.padding([.top],10)
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:300,height: 20)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    TextField("작품명을 입력해주세요",text: $title)
                        .padding([.leading],30)
                        .foregroundColor(.black)
                }
                HStack{
                    Text("작품 소개")
                        .bold()
                        .padding()
                    Spacer()
                }
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 300,height: 100)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    TextField("작품 소개를 해주세요",text: $introduce)
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 90, trailing: 0))
                }
                HStack{
                    Text("태그 선택")
                        .bold()
                        .padding()
                    Spacer()
                }
                HStack {
                    ForEach(topallTags, id: \.self) { tag in
                        Button(action: {
                            if selectTag.contains(tag) {
                                selectTag.remove(tag)
                            } else {
                                selectTag.insert(tag)
                            }
                        }) {
                            Text("\(tag)")
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(selectTag.contains(tag) ? Color.orange : Color.pink.opacity(0.2))
                                .foregroundColor(selectTag.contains(tag) ? Color.white : Color.pink)
                                .cornerRadius(30)
                        }
                    }
                }
                HStack {
                    ForEach(bottomallTags, id: \.self) { tag in
                        Button(action: {
                            if selectTag.contains(tag) {
                                selectTag.remove(tag)
                            } else {
                                selectTag.insert(tag)
                            }
                        }) {
                            Text("\(tag)")
                                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                                .background(selectTag.contains(tag) ? Color.orange : Color.pink.opacity(0.2))
                                .foregroundColor(selectTag.contains(tag) ? Color.white : Color.pink)
                                .cornerRadius(30)
                        }
                    }
                }
                Button{
                    if image == nil {
                        alertMessage = "이미지를 선택해주세요."
                        showingAlert = true
                    } else if title.isEmpty {
                        alertMessage = "작품명을 입력해주세요."
                        showingAlert = true
                    } else if introduce.isEmpty {
                        alertMessage = "작품 소개를 작성해주세요."
                        showingAlert = true
                    } else if selectTag.isEmpty {
                        alertMessage = "태그를 선택해주세요."
                        showingAlert = true
                    } else{
                        print("success")
                        issucces = true
                    }
                    
                }label: {
                    Text("작품 등록")
                        .padding(EdgeInsets(top: 15, leading: 140, bottom: 15, trailing: 140))
                        .foregroundStyle(Color.black)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
                .sheet(isPresented: $issucces){
                    SuccessView(
                        image: image,
                        title: title,
                        selectedTags: selectTag
                    )
                }
                .alert(isPresented: $showingAlert){
                    Alert(title: Text("오류"),message:Text(alertMessage),dismissButton: .default(Text("확인")))
                }
                .padding([.top],30)
            }
            .padding()
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
