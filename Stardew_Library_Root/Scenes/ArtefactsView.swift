//
//  ArtefactsView.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/10.
//

import SwiftUI

struct ArtefactsView : View {
    var artefacts: [ArtefactsData] = testArtefactsData
    
    var body: some View {
        NavigationView {
          
            List(artefacts) { artefact in
                ArtefactsShippedCell(artefact: artefact)
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gear")
                                .font(.title)
                        }
                        
                    }

                        
                    }
               }.navigationBarTitle("Artefacts", displayMode: .inline)
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
           HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 100) {
                    NavigationLink(destination: MineralsView()) {
                        Image(systemName: "arrow.right.circle")
                            .font(.title)
                            .padding(100)
                    }
               
           }
       


            }
       
        
        
      
}
        }
    }
}

#if DEBUG
struct ArtefactsView_Previews : PreviewProvider {
    static var previews: some View {
        ArtefactsView(artefacts: testArtefactsData)
    }
}
#endif


struct ArtefactsShippedCell : View {
    let artefact: ArtefactsData
    var body: some View {
        return NavigationLink(destination: ArtefactsDetailView(image: artefact.image, name: artefact.name,  info: artefact.info, location: artefact.location,  sellprice: artefact.sellprice, used: artefact.used)) {
            Image(artefact.image)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(artefact.name)
                Text(artefact.info)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}