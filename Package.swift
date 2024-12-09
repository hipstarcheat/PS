// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "My App",  // Название вашего приложения
    platforms: [
        .iOS(.v17.5)  // Минимальная версия iOS
    ],
    products: [
        .executable(  // Исправлено на .executable вместо .executableTarget
            name: "My App",
            targets: ["MyAppTarget"]  // Используем Target для связывания
        ),
    ],
    dependencies: [
        // Если нет сторонних библиотек, оставьте этот массив пустым
        // Например, для Alamofire добавьте:
        // .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "MyAppTarget",  // Обновлено имя target'а
            dependencies: [
                // Здесь укажите зависимости для вашего приложения, если есть
                // Например: "Alamofire"
            ],
            path: "Sources",  // Указываем путь к исходным файлам
            resources: [
                .process("Resources")  // Исправлено на правильный путь к ресурсам
            ]
        ),
    ]
)
