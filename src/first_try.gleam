import gleam/io
import gleam/int
import my_module

pub fn add(first: Int, second: Int) -> Int {
  first + second
}

pub fn main() -> Nil {
  my_module.echo_name("Dirga")
  io.println("Hello from first_try!")
  io.println(int.to_string(add(1,3)))
}
