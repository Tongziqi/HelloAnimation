//
//  HelloAnimation.swift
//  OpenvisionOS
//
//  Created by Nino on 2024/2/21.
//

import SwiftUI

enum CommodityColor {
    case gold
    case silver
    case platinum
    case bronze
    var colors: [Color] {
        switch self {
            case .gold: return [ Color(hex: "0xDBB400"),
                                 Color(hex: "0xEFAF00"),
                                 Color(hex: "0xF5D100"),
                                 Color(hex: "0xF5D100"),
                                 Color(hex: "0xD1AE15"),
                                 Color(hex: "0xDBB400"),
            ]
                
            case .silver: return [ Color(hex: "0x70706F"),
                                   Color(hex: "0x7D7D7A"),
                                   Color(hex: "0xB3B6B5"),
                                   Color(hex: "0x8E8D8D"),
                                   Color(hex: "0xB3B6B5"),
                                   Color(hex: "0xA1A2A3"),
            ]
                
            case .platinum: return [ Color(hex: "0x000000"),
                                     Color(hex: "0x444444"),
                                     Color(hex: "0x000000"),
                                     Color(hex: "0x444444"),
                                     Color(hex: "0x111111"),
                                     Color(hex: "0x000000"),
            ]
                
            case .bronze: return [ Color(hex: "0x804A00"),
                                   Color(hex: "0x9C7A3C"),
                                   Color(hex: "0xB08D57"),
                                   Color(hex: "0x895E1A"),
                                   Color(hex: "0x804A00"),
                                   Color(hex: "0xB08D57"),
            ]}
    }
    
    var linearGradient: LinearGradient
    {
        return LinearGradient(
            gradient: Gradient(colors: self.colors),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

struct HelloAnimation: View {
    @State private var isAnimating = false
    var body: some View {
        HelloView(percent: isAnimating ? 1 : 0)
            .stroke(style: StrokeStyle(lineWidth: 34, lineCap: .round, lineJoin: .round))
            .fill(CommodityColor.gold.linearGradient)
            .padding(128)
            .onAppear {
                withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: false)) {
                    isAnimating = true
                }
            }
    }
    
}

struct HelloView: Shape {
    var percent: Double
    
    var animatableData: Double {
        get { percent }
        set { percent = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var shape = Path()
        // Calculate scaling factor
        let scaleX = 1.0
        let scaleY = 1.0
        
        // Helper function to scale a CGPoint
        func scalePoint(_ point: CGPoint) -> CGPoint {
            return CGPoint(x: point.x * scaleX, y: point.y * scaleY)
        }
        
        shape.move(to: scalePoint(CGPoint(x: 113, y: 66)))
        shape.addCurve(to: scalePoint(CGPoint(x: 210.33, y: 49.11)), control1: scalePoint(CGPoint(x: 144.52, y: 84.01)), control2: scalePoint(CGPoint(x: 185.54, y: 73.91)))
        shape.addCurve(to: scalePoint(CGPoint(x: 213.89, y: 2.89)), control1: scalePoint(CGPoint(x: 220.22, y: 39.22)), control2: scalePoint(CGPoint(x: 237.18, y: 7.32)))
        shape.addCurve(to: scalePoint(CGPoint(x: 169.89, y: 54)), control1: scalePoint(CGPoint(x: 186.41, y: -2.35)), control2: scalePoint(CGPoint(x: 176.97, y: 35.3)))
        shape.addCurve(to: scalePoint(CGPoint(x: 105.45, y: 175.11)), control1: scalePoint(CGPoint(x: 154.03, y: 95.92)), control2: scalePoint(CGPoint(x: 138.61, y: 143.13)))
        shape.addCurve(to: scalePoint(CGPoint(x: 17.44, y: 227.56)), control1: scalePoint(CGPoint(x: 78.78, y: 200.83)), control2: scalePoint(CGPoint(x: 51.06, y: 213.8)))
        shape.addCurve(to: scalePoint(CGPoint(x: 13, y: 208.22)), control1: scalePoint(CGPoint(x: -3.83, y: 236.26)), control2: scalePoint(CGPoint(x: -1.58, y: 217.13)))
        shape.addCurve(to: scalePoint(CGPoint(x: 65, y: 199.78)), control1: scalePoint(CGPoint(x: 30.87, y: 197.3)), control2: scalePoint(CGPoint(x: 45.39, y: 192.15)))
        shape.addCurve(to: scalePoint(CGPoint(x: 113.89, y: 222.89)), control1: scalePoint(CGPoint(x: 82.16, y: 206.45)), control2: scalePoint(CGPoint(x: 95.92, y: 219.21)))
        shape.addCurve(to: scalePoint(CGPoint(x: 237, y: 202.89)), control1: scalePoint(CGPoint(x: 156.62, y: 231.63)), control2: scalePoint(CGPoint(x: 198.56, y: 222.11)))
        shape.addCurve(to: scalePoint(CGPoint(x: 288.11, y: 158.89)), control1: scalePoint(CGPoint(x: 254.81, y: 193.99)), control2: scalePoint(CGPoint(x: 281.27, y: 179.41)))
        shape.addCurve(to: scalePoint(CGPoint(x: 273.22, y: 130.44)), control1: scalePoint(CGPoint(x: 292.87, y: 144.62)), control2: scalePoint(CGPoint(x: 290.21, y: 130.44)))
        shape.addCurve(to: scalePoint(CGPoint(x: 235, y: 166.22)), control1: scalePoint(CGPoint(x: 259.43, y: 130.44)), control2: scalePoint(CGPoint(x: 241.26, y: 155.09)))
        shape.addCurve(to: scalePoint(CGPoint(x: 221, y: 217.78)), control1: scalePoint(CGPoint(x: 224.65, y: 184.62)), control2: scalePoint(CGPoint(x: 221, y: 196.93)))
        shape.addCurve(to: scalePoint(CGPoint(x: 313, y: 206)), control1: scalePoint(CGPoint(x: 221, y: 257.24)), control2: scalePoint(CGPoint(x: 304.87, y: 230.39)))
        
        shape.move(to: scalePoint(CGPoint(x: 477, y: 110)))
        shape.addCurve(to: scalePoint(CGPoint(x: 592.78, y: 20.22)), control1: scalePoint(CGPoint(x: 509.69, y: 99.73)), control2: scalePoint(CGPoint(x: 599.94, y: 73.96)))
        shape.addCurve(to: scalePoint(CGPoint(x: 573, y: 6.89)), control1: scalePoint(CGPoint(x: 591.51, y: 10.69)), control2: scalePoint(CGPoint(x: 581.15, y: 8.29)))
        shape.addCurve(to: scalePoint(CGPoint(x: 545.89, y: 37.11)), control1: scalePoint(CGPoint(x: 560.11, y: 4.68)), control2: scalePoint(CGPoint(x: 549.97, y: 28.08)))
        shape.addCurve(to: scalePoint(CGPoint(x: 401, y: 249.11)), control1: scalePoint(CGPoint(x: 515.26, y: 104.93)), control2: scalePoint(CGPoint(x: 488.41, y: 231.63)))
        shape.addCurve(to: scalePoint(CGPoint(x: 393.22, y: 232)), control1: scalePoint(CGPoint(x: 390.85, y: 251.14)), control2: scalePoint(CGPoint(x: 392.54, y: 238.45)))
        shape.addCurve(to: scalePoint(CGPoint(x: 424.78, y: 200.22)), control1: scalePoint(CGPoint(x: 394.74, y: 217.57)), control2: scalePoint(CGPoint(x: 413.27, y: 206.55)))
        shape.addCurve(to: scalePoint(CGPoint(x: 477, y: 186)), control1: scalePoint(CGPoint(x: 439.92, y: 191.9)), control2: scalePoint(CGPoint(x: 459.77, y: 186)))
        shape.addCurve(to: scalePoint(CGPoint(x: 503.22, y: 203.78)), control1: scalePoint(CGPoint(x: 490.86, y: 186)), control2: scalePoint(CGPoint(x: 494.64, y: 195.2)))
        shape.addCurve(to: scalePoint(CGPoint(x: 549, y: 230.89)), control1: scalePoint(CGPoint(x: 516.37, y: 216.93)), control2: scalePoint(CGPoint(x: 533.16, y: 224.22)))
        shape.addCurve(to: scalePoint(CGPoint(x: 624.11, y: 214)), control1: scalePoint(CGPoint(x: 567.47, y: 238.67)), control2: scalePoint(CGPoint(x: 613.61, y: 233.95)))
        shape.addCurve(to: scalePoint(CGPoint(x: 608.11, y: 158)), control1: scalePoint(CGPoint(x: 636.86, y: 189.77)), control2: scalePoint(CGPoint(x: 641.37, y: 158)))
        shape.addCurve(to: scalePoint(CGPoint(x: 615, y: 228)), control1: scalePoint(CGPoint(x: 550.48, y: 158)), control2: scalePoint(CGPoint(x: 544.26, y: 276.98)))
        shape.addCurve(to: scalePoint(CGPoint(x: 694.78, y: 136)), control1: scalePoint(CGPoint(x: 651.78, y: 202.54)), control2: scalePoint(CGPoint(x: 668.12, y: 170.28)))
        shape.addCurve(to: scalePoint(CGPoint(x: 697.89, y: 134.89)), control1: scalePoint(CGPoint(x: 703.97, y: 124.18)), control2: scalePoint(CGPoint(x: 704.36, y: 117.41)))
        shape.addCurve(to: scalePoint(CGPoint(x: 679.22, y: 181.78)), control1: scalePoint(CGPoint(x: 692.05, y: 150.67)), control2: scalePoint(CGPoint(x: 685.99, y: 166.32)))
        shape.addCurve(to: scalePoint(CGPoint(x: 715, y: 228)), control1: scalePoint(CGPoint(x: 667.81, y: 207.87)), control2: scalePoint(CGPoint(x: 678, y: 253.61)))
        shape.addCurve(to: scalePoint(CGPoint(x: 775, y: 156)), control1: scalePoint(CGPoint(x: 740.69, y: 210.22)), control2: scalePoint(CGPoint(x: 790.17, y: 128.69)))
        shape.addCurve(to: scalePoint(CGPoint(x: 755.22, y: 232)), control1: scalePoint(CGPoint(x: 765.87, y: 172.44)), control2: scalePoint(CGPoint(x: 740.04, y: 212.49)))
        shape.addCurve(to: scalePoint(CGPoint(x: 855, y: 150.22)), control1: scalePoint(CGPoint(x: 780.61, y: 264.64)), control2: scalePoint(CGPoint(x: 845.12, y: 167.79)))
        shape.addCurve(to: scalePoint(CGPoint(x: 861, y: 142)), control1: scalePoint(CGPoint(x: 860.65, y: 140.18)), control2: scalePoint(CGPoint(x: 873.63, y: 116.74)))
        shape.addCurve(to: scalePoint(CGPoint(x: 837.22, y: 207.78)), control1: scalePoint(CGPoint(x: 850.35, y: 163.31)), control2: scalePoint(CGPoint(x: 841.51, y: 184.22)))
        shape.addCurve(to: scalePoint(CGPoint(x: 905, y: 198)), control1: scalePoint(CGPoint(x: 829.45, y: 250.5)), control2: scalePoint(CGPoint(x: 896.12, y: 224.65)))
        
        shape.move(to: scalePoint(CGPoint(x: 665, y: 158)))
        shape.addCurve(to: scalePoint(CGPoint(x: 905, y: 150)), control1: scalePoint(CGPoint(x: 744.95, y: 158)), control2: scalePoint(CGPoint(x: 825.23, y: 154.84)))
        
        shape.move(to: scalePoint(CGPoint(x: 1125, y: 58)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1117.22, y: 32)), control1: scalePoint(CGPoint(x: 1092.92, y: 78.53)), control2: scalePoint(CGPoint(x: 1096.73, y: 43.53)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1172.78, y: 32)), control1: scalePoint(CGPoint(x: 1130.75, y: 24.39)), control2: scalePoint(CGPoint(x: 1168.32, y: 3)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1033, y: 222)), control1: scalePoint(CGPoint(x: 1183.71, y: 103.07)), control2: scalePoint(CGPoint(x: 1109.88, y: 222)))
        
        shape.move(to: scalePoint(CGPoint(x: 1149, y: 46)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1225.89, y: 18)), control1: scalePoint(CGPoint(x: 1167.4, y: 20.45)), control2: scalePoint(CGPoint(x: 1196.3, y: 17.53)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1248.56, y: 77.78)), control1: scalePoint(CGPoint(x: 1258.21, y: 18.51)), control2: scalePoint(CGPoint(x: 1266.86, y: 53.37)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1141, y: 173.11)), control1: scalePoint(CGPoint(x: 1219.81, y: 116.1)), control2: scalePoint(CGPoint(x: 1099.71, y: 197.4)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1212.78, y: 152.22)), control1: scalePoint(CGPoint(x: 1156.67, y: 163.89)), control2: scalePoint(CGPoint(x: 1251.26, y: 92.1)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1185, y: 197.11)), control1: scalePoint(CGPoint(x: 1203.29, y: 167.05)), control2: scalePoint(CGPoint(x: 1194.51, y: 182.32)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1197, y: 186.89)), control1: scalePoint(CGPoint(x: 1179.69, y: 205.38)), control2: scalePoint(CGPoint(x: 1195.15, y: 189.51)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1237.22, y: 148)), control1: scalePoint(CGPoint(x: 1206.53, y: 173.35)), control2: scalePoint(CGPoint(x: 1222.62, y: 156.21)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1277, y: 146)), control1: scalePoint(CGPoint(x: 1250.4, y: 140.59)), control2: scalePoint(CGPoint(x: 1311.57, y: 109.51)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1255, y: 202)), control1: scalePoint(CGPoint(x: 1271.69, y: 151.61)), control2: scalePoint(CGPoint(x: 1237.86, y: 202)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1321, y: 150)), control1: scalePoint(CGPoint(x: 1278.02, y: 202)), control2: scalePoint(CGPoint(x: 1305.28, y: 165.72)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1305.89, y: 186)), control1: scalePoint(CGPoint(x: 1351.29, y: 119.71)), control2: scalePoint(CGPoint(x: 1279.39, y: 219.37)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1349.89, y: 138)), control1: scalePoint(CGPoint(x: 1319.16, y: 169.29)), control2: scalePoint(CGPoint(x: 1336.21, y: 154.72)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1391, y: 116)), control1: scalePoint(CGPoint(x: 1360.17, y: 125.44)), control2: scalePoint(CGPoint(x: 1377.52, y: 123.49)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1375.44, y: 153.78)), control1: scalePoint(CGPoint(x: 1404.6, y: 108.44)), control2: scalePoint(CGPoint(x: 1377.46, y: 150.19)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1365, y: 190)), control1: scalePoint(CGPoint(x: 1369.73, y: 163.94)), control2: scalePoint(CGPoint(x: 1365, y: 178.38)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1451, y: 142)), control1: scalePoint(CGPoint(x: 1365, y: 213.18)), control2: scalePoint(CGPoint(x: 1442.51, y: 155.21)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1448.11, y: 118.89)), control1: scalePoint(CGPoint(x: 1456.38, y: 133.63)), control2: scalePoint(CGPoint(x: 1469.47, y: 111.49)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1411.22, y: 162.22)), control1: scalePoint(CGPoint(x: 1430.21, y: 125.08)), control2: scalePoint(CGPoint(x: 1418.27, y: 146.11)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1485, y: 177.11)), control1: scalePoint(CGPoint(x: 1385.23, y: 221.64)), control2: scalePoint(CGPoint(x: 1461.44, y: 189.53)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1521, y: 130)), control1: scalePoint(CGPoint(x: 1500.76, y: 168.8)), control2: scalePoint(CGPoint(x: 1521, y: 149.25)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1491, y: 136)), control1: scalePoint(CGPoint(x: 1521, y: 110.44)), control2: scalePoint(CGPoint(x: 1496.4, y: 128.2)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1497, y: 202)), control1: scalePoint(CGPoint(x: 1478.34, y: 154.29)), control2: scalePoint(CGPoint(x: 1457.38, y: 200.87)))
        shape.addCurve(to: scalePoint(CGPoint(x: 1605, y: 138)), control1: scalePoint(CGPoint(x: 1542.29, y: 203.29)), control2: scalePoint(CGPoint(x: 1594.98, y: 188.11)))
        
        shape.move(to: scalePoint(CGPoint(x: 1337, y: 82)))
        shape.addLine(to: scalePoint(CGPoint(x: 1353, y: 0)))
        
        // Use the percent value to determine how much of the path to draw
        let trimmedPath = shape.trimmedPath(from: 0, to: percent)
        
        return trimmedPath
    }
}
