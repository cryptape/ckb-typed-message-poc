

all:
	capsule build

mol:
	moleculec --language rust --schema-file schemas/basic.mol > contracts/ckb-typed-message/src/schemas/basic.rs
	cargo fmt

install:
	rustup target add riscv64imac-unknown-none-elf
	cargo install cross --git https://github.com/cross-rs/cross
	wget 'https://github.com/nervosnetwork/capsule/releases/download/v0.10.2/capsule_v0.10.2_x86_64-linux.tar.gz'
	tar zxvf capsule_v0.10.2_x86_64-linux.tar.gz
	mv capsule_v0.10.2_x86_64-linux/capsule ~/.cargo/bin
	cargo install moleculec@0.7.5 --locked

ci:
	capsule build
	cargo test -p tests
