(module
  (import "console" "log" (func $log (param i32)))
  (func $print-log (param $n i32)
    (call $log (i32.const 10)))
  (export "printLog" (func $print-log)))
