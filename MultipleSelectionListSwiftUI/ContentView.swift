//
//  ContentView.swift
//  MultipleSelectionListSwiftUI
//
//  Created by naresh kukkala on 02/05/22.
//

import SwiftUI

struct Customer: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    
    @State private var customers = [Customer(name: "John"), Customer(name: "Alex"), Customer(name: "Mary"), Customer(name: "Steven"), Customer(name: "George"), Customer(name: "Jerry")]
    
    @State private var selectedCustomerIds = Set<UUID>()
    
    var body: some View {
        
        NavigationView {
            List(customers, selection: $selectedCustomerIds)  { customer in
                HStack {
                    Text(customer.name)
                    Spacer()
                }
            }.toolbar {
                EditButton()
            }
            .navigationTitle("Selected \(selectedCustomerIds.count)")
            
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
