(module
  (func $sum (param $n i32) (result i32)
    (local $i i32) (local $sum i32)
    (block $exit
      (loop $loop
        (br_if $exit
          (i32.le_s (local.get $n) (local.get $i)))
        (local.set $sum
          (i32.add (local.get $sum) (local.get $i)))
        (local.set $i
          (i32.add (local.get $i) (i32.const 1)))
        (br $loop)))
    (return (local.get $sum)))
  (export "sum" (func $sum)))
