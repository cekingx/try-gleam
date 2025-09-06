import gleam/list
import gleam/io

pub fn map(ints: List(Int)) -> List(Int) {
  list.map(ints, fn(item) { item * 2 })
}

pub fn filter(ints: List(Int)) -> List(Int) {
  list.filter(ints, fn(item) { item % 2 == 0 })
}

pub fn find(ints: List(Int)) -> Result(Int, Nil) {
  list.find(ints, fn(item) { item == 3 })
}

pub fn fold(ints: List(Int)) -> Int {
  list.fold(ints, 0, fn(acc, value) {
    echo [acc, value]
    acc + value
  })
}

pub fn do_list() -> Nil {
  let ints = [1,2,3,4,5]

  io.println("Original")
  echo ints
  io.println("")

  io.println("Map")
  echo map(ints)
  io.println("")

  io.println("Filter")
  echo filter(ints)
  io.println("")

  io.println("Find 3")
  let _ = echo find(ints)
  io.println("")

  io.println("Fold")
  echo fold(ints)
  io.println("")

  Nil
}
