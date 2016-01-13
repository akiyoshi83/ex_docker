# rust

Rust, Cargo and GDB

## Usage

```sh
$ docker run --rm -it -v $(pwd):/src akiyoshi83/rust
```

Mount your local source folder to the container and compile & run code inside.

#### Compiling code

```sh
$ rustc hello-world.rs
$ ./hello-world
> Hello World!
```

#### Environment variables

The `$USER` environment variable can be specified, which is used by `cargo`. The default is `root`.

```sh
$ docker run --rm -it -e USER="suzuki" -v $(pwd):/src akiyoshi83/rust
```
