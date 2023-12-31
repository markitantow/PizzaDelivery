//
//  MainView.swift
//  PizzaDelivery
//
//  Created by Pavel Markitantov on 05/01/2024.
//

import SwiftUI

struct MainView: View {
    init() {
        // Настройка внешнего вида UITabBar
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor(named: "secondaryColor")
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(named: "primaryOrange")
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(.black) as Any]

        // Применение настроек к UITabBar
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            Text("Корзина")
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }

            Text("User")
                .tabItem {
                    Label("User", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainView()
}
