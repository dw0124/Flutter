//
//  AppIntent.swift
//  MyWidget
//
//  Created by 김두원 on 5/22/25.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource { "Configuration" }
    static var description: IntentDescription { "This is an example widget." }

    // An example configurable parameter.
    @Parameter(title: "Favorite 이모지?", default: "😃")
    var favoriteEmoji: String
}
