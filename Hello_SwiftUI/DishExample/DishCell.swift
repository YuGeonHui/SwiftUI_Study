import SwiftUI

struct DishCell: View {
    var body: some View {
        
        NavigationView {
            
            HStack {
            
                Image("Test1").resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Filet Mignon")
                    Text("$35")
                }
            }
            .padding(5)
        }
    }
}

#if DEBUG
struct DishCell_Previews: PreviewProvider {
    static var previews: some View {
        
        // 여러개의 뷰를 동시에 보는 방법 (동적 글꼴 크기 확인방법)
        Group {
            
            DishCell().colorScheme(.dark) // Dark 모드 확인 방법
            
            DishCell().previewDevice("iPhone SE") // 다른 기기에서 확인해보는 방법 
        
            DishCell().previewLayout(.sizeThatFits) // 해당 View가 차지 하는 영역만 표시해준다.
                .environment(\.sizeCategory, .extraSmall)
            
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
            
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
        }
    }
}
#endif
