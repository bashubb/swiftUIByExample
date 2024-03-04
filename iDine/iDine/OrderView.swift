//
//  OrderView.swift
//  iDine
//
//  Created by HubertMac on 04/03/2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                
                Section {
                    NavigationLink("Place Order") {
                        Text("Check Out")
                    }
                }
            }
            .navigationTitle("Order")
            
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}