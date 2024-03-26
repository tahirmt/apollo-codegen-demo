//
//  File.swift
//  
//
//  Created by Mahmood Tahir on 2024-03-25.
//

import Foundation
import ArgumentParser
import ApolloCodegenLib

@main
struct MainCommand: AsyncParsableCommand {
    func run() async throws {
        let config = ApolloCodegenConfiguration(
            schemaNamespace: "API",
            input: .init(
                schemaPath: "APISchema/schema.graphqls",
                operationSearchPaths: ["**/*.graphql"]
            ),
            output: .init(
                schemaTypes: .init(
                    path: "API",
                    moduleType: .swiftPackageManager
                ),
                operations: .inSchemaModule,
                testMocks: .none
            ),
            options: .init(
                selectionSetInitializers: .all,
                fieldMerging: .none,
                operationDocumentFormat: .definition,
                cocoapodsCompatibleImportStatements: false,
                markOperationDefinitionsAsFinal: true
            ),
            operationManifest: .init(
                path: "APISchema/manifest.json",
                version: .persistedQueries,
                generateManifestOnCodeGeneration: true
            )
        )

        try await ApolloCodegen.build(with: config)
    }
}
