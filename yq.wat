(module
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32)))
  (memory (export "memory") 1)
  (func (export "_start")
    (i32.store (i32.const 0) (i32.const 8))    ;; iovec base
    (i32.store (i32.const 4) (i32.const 3))    ;; iovec length
    (drop
      (call $fd_write
        (i32.const 1)      ;; fd
        (i32.const 0)      ;; iovec
        (i32.const 1)      ;; iovec count
        (i32.const 16))))  ;; nwritten
  (data (i32.const 8) "yq\n"))
