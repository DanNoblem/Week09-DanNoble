//
//  ListView.swift
//  Bucketlist
//
//  Created by Daniel Wai on 4/3/23.
//

import SwiftUI

struct ListView: View {
    let item : Location
    private var locationList: [Location]{
        Location(id:UUID(),name: "New York")
        Location(id: UUID(), name: "Brooklyn")
    }
    
    var body: some View {
        List{
            
                Section(item.name){
                    ForEach(locationList){ locationList in
                        Section{
                            Text(locationList.name)
                        }
                    }
                }
                
                Section{
                    Text(item.name)
                    
                }
                
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(item: Location.example)
    }
}
