# Apollo Code Gen Demo

This project demonstrates apollo code gen.

The schema is located at `APISchema/schema.graphqls` directory.

There is only one query `node` that fetches `Node` interface. There's a few implementations of `Node`.

There is a single `Node` query that fetches `NodeFragment`. The fragment contains fragments for other nodes.

### Running code gen

You can run code gen using `swift run codegen` which executes the code gen command located at `Sources/codegen/Command.swift`
