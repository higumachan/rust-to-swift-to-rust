#[no_mangle]
pub extern "C" fn call_rust_from_swift_from_rust() -> i32 {
    println!("Rust: Swiftから呼び出されました！");
    42
}

fn call_swift() {
    // Swiftの関数を呼び出す
    println!("Calling Swift from Rust...");
    unsafe {
        call_swift_from_rust();
    }
}

extern "C" {
    fn call_swift_from_rust() -> i32;
}


fn main() {
    call_swift();
}