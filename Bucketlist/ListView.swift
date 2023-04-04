//
//  ListView.swift
//  Bucketlist
//
//  Created by Daniel Wai on 4/3/23.
//

import SwiftUI

struct ListView: View {
    let item : Location
    
    var body: some View {
        List{
            
                Section(item.name){
                    ForEach(section.item){
                        
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
