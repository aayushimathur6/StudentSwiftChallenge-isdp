import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.pink,Color.purple,Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Welcome to DevelopHer")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    Image(systemName: "macbook")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                    
                    
                    Spacer()
                    
                    Text("Let's Take you to the Best Tech Oppurtuinites that Women Can Have")
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                    
                    
                    NavigationLink(destination: EventsListView()) {
                        Image(systemName: "arrow.right.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                    }
                    
                    Spacer()
                }
            }
        }
        
        .navigationBarHidden(true)
    }
}

struct EventsListView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink,Color.purple,Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Events")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.white)
                
                List(sampleEvents, id: \.name) { event in
                    NavigationLink(destination: EventDetailView(event: event)) {
                        EventRow(event: event)
                    }
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}

struct EventRow: View {
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(event.name)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.purple)
            
            Text(event.subText)
                .font(.subheadline)
                .foregroundColor(.pink)
            
        }
        .padding()
    }
}

struct EventDetailView: View {
    var event: Event
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink,Color.purple,Color.purple,Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView {
                VStack {
                    Text(event.name)
                        .bold()
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    
                    Text(event.description)
                        .padding()
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                }
            }
        }
    }
}

struct Event {
    var name: String
    var subText: String
    var description: String
}


let sampleEvents = [
    Event(name: "General",
          subText: "General programs for Women In Tech",
          description: "1. Student Swift Challenge\n\n2. Rails Girls Summer of Code\n\n3. Google CodeJam IO\n\n4. +Hack@Home by Atlassian - Aug to Sep\n\n5. She Codes by Indeed - Aug to Nov\n\n6. Outreachy - Aug & Feb\n\n7. DevelopHER (Twitter) - JulyGirl\n\n8. Script Summer of Code"),
    
    
    Event(name: "Women in Tech Scholarships",
          subText: "Scholarships For Women",
          description: "1. Google Women Techmaker (1st & 2nd Yr) - March\n\n2. Adobe Women In Tech (3rd Yr) - Aug\n\n3. GSoC Systers\n\n4. Grace Hopper Scholarship (4th Yr)\n\n5. SheIntuit by Intuit - Aug\n\n6. Goldman Sachs Women Mentorship Program\n\n7. Women Who Code Mentorship - Dec\n\n8. Snap Research Scholarship\n\n9. Nutanix WiT scholarship\n\n10. Western Digital STEM scholarship\n\n11. Qualcomm WeTech\n\n12. Palantir Global Impact Scholarship"),
    
    Event(name: "For Sophomores",
          subText: "Opportunities for the second year college students",
          description: "1. Google STEP Intern - Dec\n\n2. Microsoft Codess - Feb\n\n3. American Express Makeathon - Feb\n\n4. AmazeWoW - April"),
    
    Event(name: "For Final and Pre-Final year",
          subText: "Opportunities for the Final and Pre-Final year college students",
          description: "1. Visa Code your way - Nov\n\n2. Adobe CoDiva\n\n3. LinkedIn Wintathon\n\n4. AmazeWoW - April")
]

#Preview {
    HomeView()
}
