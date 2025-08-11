import SwiftUI
import WebKit

// هذا هو المكون الذي يعرض صفحة الويب
struct WebView: UIViewRepresentable {
    // الرابط الذي سيتم فتحه
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

// هذه هي الواجهة الرئيسية للتطبيق
struct ContentView: View {
    // هنا نضع رابط موقعك
    private let websiteURL = URL(string: "https://chatzeus.vercel.app" )!

    var body: some View {
        // اعرض الـ WebView واجعله يملأ الشاشة
        WebView(url: websiteURL)
            .ignoresSafeArea() // هذا يجعل الموقع يمتد تحت شريط الحالة
    }
}
