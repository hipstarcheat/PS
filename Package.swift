// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "My App",  // Название вашего приложения
    platforms: [
        .iOS(.v14)  // Минимальная версия iOS
    ],
    products: [
        .executableTarget(
            name: "My App",
            dependencies: [],
            path: "Sources", // Укажите папку, где находятся исходные файлы
            resources: [
                .process("../Resources/Assets.xcassets") // Укажите путь к ресурсам
            ]
        ),
    ],
    dependencies: [
        // Если нет сторонних библиотек, оставьте этот массив пустым
        // Например, для Alamofire добавьте:
        // .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0")
    ],
    targets: [
        .executableTarget(
            name: "My App",
            dependencies: [
                // Здесь укажите зависимости для вашего приложения, если есть
                // Например: "Alamofire"
            ],
            path: "./Sources"  // Укажите путь к исходным файлам вашего приложения
        ),
    ]
)
