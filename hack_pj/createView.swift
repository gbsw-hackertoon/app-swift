import SwiftUI
import PhotosUI

struct CreateView: View {
    @State private var image: UIImage?
    @State private var selectedItems: [PhotosPickerItem] = []

    var body: some View {
        VStack{
            Text("작품 등록")
            image.map{
                Image(uiImage: $0)
                    .resizable()
                    .scaledToFit()
            }

            PhotosPicker(
                selection: $selectedItems,
                matching: .images
            ) {
                Text("이미지 선택")
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

            Spacer()
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
