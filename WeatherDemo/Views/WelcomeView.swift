//
//  WelcomeView.swift
//  WeatherDemo
//
//  Created by Karun Kumar on 18/04/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager : LocationManager
    var body: some View {
        VStack{
            VStack(spacing:20){
                Text("Welcome to WetherApp")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Text("Please share your current location to get weather in your area.")
                    .padding()
            }.multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.sendCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        
    }
}

#Preview {
    WelcomeView()
}
