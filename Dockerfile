FROM rust:slim

# Install build dependencies
RUN apt-get update && apt-get install -y pkg-config libssl-dev openssl

WORKDIR /app

# Abhängigkeiten separat cachen
COPY Cargo.toml Cargo.lock ./
RUN mkdir src && echo "fn main() {}" > src/main.rs
RUN cargo build --release
RUN rm -rf src

# Projektdateien kopieren
COPY . .

# Anwendung bauen
RUN cargo build --release

# Exponierter Port
EXPOSE 3000

# Startbefehl
CMD ["./target/release/cloud_server"]
