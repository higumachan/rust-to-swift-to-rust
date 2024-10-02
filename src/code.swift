import Foundation

// Cインターフェースでエクスポート
@_cdecl("call_swift_from_rust")
public func callSwiftFromRust() -> Int32 {
    print("Swift: Rustから呼び出されました！")
    let result = callRustFromSwift()  // Rustの関数を呼び出す
    print("Swift: Rustの関数の結果は \(result) です。")
    return result
}

@_silgen_name("call_rust_from_swift_from_rust")
func call_rust_from_swift_from_rust() -> Int32

// SwiftからRustを呼び出す
@_cdecl("call_rust_from_swift")
public func callRustFromSwift() -> Int32 {
    return call_rust_from_swift_from_rust()  // Rustの関数を呼び出す
}
