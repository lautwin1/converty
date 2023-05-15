
import SwiftUI

struct MainMenu: View {
    
    var body: some View {
        NavigationStack {
            Text("Converty")
                .font(.largeTitle)
                .padding(.top, 75)
            
            

            Grid(horizontalSpacing: 50, verticalSpacing: 50) {
                
                GridRow {
                    NavigationLink("Length") {
                        LengthMenu()
                    }.buttonStyle(LengthButtonStyle())
                    NavigationLink("Speed") {
                        SpeedMenu()
                    }.buttonStyle(SpeedButtonStyle())
                }.padding(.top, 30)

                GridRow {
                    NavigationLink("Weight") {
                        WeightMenu()
                    }.buttonStyle(WeightButtonStyle())
                    NavigationLink("Time") {
                        TimeMenu()
                    }.buttonStyle(TimeButtonStyle())
                }

                GridRow {
                    NavigationLink("Area") {
                        AreaMenu()
                    }.buttonStyle(AreaButtonStyle())
                    NavigationLink("Volume") {
                        VolumeMenu()
                    }.buttonStyle(VolumeButtonStyle())
                }
                

            }
            .font(.title2)
            .padding(.top, 100)
            Spacer()
        }
        
    }
}

