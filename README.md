# McEx

McEx is a Minecraft server written in Elixir and Rust. All the networking and logic is implemented in Elixir, while the low level chunk data handling is done in Rust.

It is written with distribution in mind. It will take advantage of all cores on the machine by default. In the future it should be possible to offload the computationally heavy parts (like chunk generation, chunk servers, even anticheat) to other machines, while keeping the core parts that require more swift communication on a single machine.

##### Features:
* Joining (compression, encryption, packet handling)
* Player movement
* World (chunk loading, world generation)
* World interaction (only block destruction for now)

##### Built on:
* [Rustler](https://github.com/hansihe/Rustler) - For making interaction between the Elixir and Rust code easy.
* [voxel_worldgen](https://github.com/hansihe/voxel_worldgen) - World generation.
* [Rust](https://www.rust-lang.org/) - Safe systems-level programming language. Chunk code is written in rust.
* [Elixir](http://elixir-lang.org/) - Ruby-like language on top of Erlang/OTP. Networking, logic, etc is written in Elixir.
* [Erlang/OTP](https://www.erlang.org/) - The platform it all runs on.
