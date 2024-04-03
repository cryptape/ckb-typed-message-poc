# CKB Transaction Co-Build Protocol(TCoB)

Rust Implementation of [CKB Transaction Co-Build
Protocol(TCoB)](https://talk.nervos.org/t/ckb-transaction-cobuild-protocol-overview/7702)

## Build
Build script:

```sh
capsule build --release
```


## Project Structure
* ckb-transaction-cobuild

    A library for writing scripts to support CKB transaction co-build protocol.

* contracts/transaction-cobuild-lock-demo

    A demo lock demonstrating how to write a lock script and type script.

* schemas

    The molecule definitions

* tests

    uint tests
