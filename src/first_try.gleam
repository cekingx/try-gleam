import gleam/io
import my_module

pub fn main() -> Nil {
  my_module.echo_name("Dirga")
  io.println("Hello from first_try!")
}
