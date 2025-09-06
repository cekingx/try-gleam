import gleeunit
import first_try

pub fn main() -> Nil {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  let name = "Joe"
  let greeting = "Hello, " <> name <> "!"

  assert greeting == "Hello, Joe!"
}

pub fn add_test() {
  let first = 1
  let second = 2

  assert first_try.add(first, second) == first + second
}
