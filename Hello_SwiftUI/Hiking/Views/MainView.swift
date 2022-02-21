import SwiftUI

struct MainView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationTitle("Hikings")
        }
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL).resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles))
//                Text("\(hike.miles) miles") Text("\(hike.miles) miles") Text("\(hike.miles) miles")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

