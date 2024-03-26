// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public final class NodeQuery: GraphQLQuery {
  public static let operationName: String = "Node"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Node($sectionId: ID!) { node(id: $sectionId) { __typename ...NodeFragment } }"#,
      fragments: [CarFragment.self, NodeFragment.self, SomeSpecialNodeFragment.self, TruckFragment.self]
    ))

  public var sectionId: ID

  public init(sectionId: ID) {
    self.sectionId = sectionId
  }

  public var __variables: Variables? { ["sectionId": sectionId] }

  public struct Data: API.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { API.Objects.RootQueryType }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("node", Node?.self, arguments: ["id": .variable("sectionId")]),
    ] }

    public var node: Node? { __data["node"] }

    public init(
      node: Node? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": API.Objects.RootQueryType.typename,
          "node": node._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(NodeQuery.Data.self)
        ]
      ))
    }

    /// Node
    ///
    /// Parent Type: `Node`
    public struct Node: API.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { API.Interfaces.Node }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(NodeFragment.self),
      ] }

      public var asCar: AsCar? { _asInlineFragment() }
      public var asTruck: AsTruck? { _asInlineFragment() }
      public var asSomeSpecialNode: AsSomeSpecialNode? { _asInlineFragment() }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var nodeFragment: NodeFragment { _toFragment() }
      }

      public init(
        __typename: String
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": __typename,
          ],
          fulfilledFragments: [
            ObjectIdentifier(NodeQuery.Data.Node.self)
          ]
        ))
      }

      /// Node.AsCar
      ///
      /// Parent Type: `Car`
      public struct AsCar: API.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = NodeQuery.Data.Node
        public static var __parentType: ApolloAPI.ParentType { API.Objects.Car }
        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
          NodeQuery.Data.Node.self,
          NodeFragment.AsCar.self,
          CarFragment.self
        ] }

        public var id: API.ID { __data["id"] }
        public var name: String { __data["name"] }
        public var roofType: String? { __data["roofType"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var nodeFragment: NodeFragment { _toFragment() }
          public var carFragment: CarFragment { _toFragment() }
        }

        public init(
          id: API.ID,
          name: String,
          roofType: String? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": API.Objects.Car.typename,
              "id": id,
              "name": name,
              "roofType": roofType,
            ],
            fulfilledFragments: [
              ObjectIdentifier(NodeQuery.Data.Node.self),
              ObjectIdentifier(NodeQuery.Data.Node.AsCar.self),
              ObjectIdentifier(NodeFragment.self),
              ObjectIdentifier(NodeFragment.AsCar.self),
              ObjectIdentifier(CarFragment.self)
            ]
          ))
        }
      }

      /// Node.AsTruck
      ///
      /// Parent Type: `Truck`
      public struct AsTruck: API.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = NodeQuery.Data.Node
        public static var __parentType: ApolloAPI.ParentType { API.Objects.Truck }
        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
          NodeQuery.Data.Node.self,
          NodeFragment.AsTruck.self,
          TruckFragment.self
        ] }

        public var id: API.ID { __data["id"] }
        public var name: String { __data["name"] }
        public var roofType: String? { __data["roofType"] }
        public var isRefrigerated: Bool { __data["isRefrigerated"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var nodeFragment: NodeFragment { _toFragment() }
          public var truckFragment: TruckFragment { _toFragment() }
        }

        public init(
          id: API.ID,
          name: String,
          roofType: String? = nil,
          isRefrigerated: Bool
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": API.Objects.Truck.typename,
              "id": id,
              "name": name,
              "roofType": roofType,
              "isRefrigerated": isRefrigerated,
            ],
            fulfilledFragments: [
              ObjectIdentifier(NodeQuery.Data.Node.self),
              ObjectIdentifier(NodeQuery.Data.Node.AsTruck.self),
              ObjectIdentifier(NodeFragment.self),
              ObjectIdentifier(NodeFragment.AsTruck.self),
              ObjectIdentifier(TruckFragment.self)
            ]
          ))
        }
      }

      /// Node.AsSomeSpecialNode
      ///
      /// Parent Type: `SomeSpecialNode`
      public struct AsSomeSpecialNode: API.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = NodeQuery.Data.Node
        public static var __parentType: ApolloAPI.ParentType { API.Objects.SomeSpecialNode }
        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
          NodeQuery.Data.Node.self,
          NodeFragment.AsSomeSpecialNode.self,
          SomeSpecialNodeFragment.self
        ] }

        public var id: API.ID { __data["id"] }
        public var cars: [Car?]? { __data["cars"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var nodeFragment: NodeFragment { _toFragment() }
          public var someSpecialNodeFragment: SomeSpecialNodeFragment { _toFragment() }
        }

        public init(
          id: API.ID,
          cars: [Car?]? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": API.Objects.SomeSpecialNode.typename,
              "id": id,
              "cars": cars._fieldData,
            ],
            fulfilledFragments: [
              ObjectIdentifier(NodeQuery.Data.Node.self),
              ObjectIdentifier(NodeQuery.Data.Node.AsSomeSpecialNode.self),
              ObjectIdentifier(NodeFragment.self),
              ObjectIdentifier(NodeFragment.AsSomeSpecialNode.self),
              ObjectIdentifier(SomeSpecialNodeFragment.self)
            ]
          ))
        }

        /// Node.AsSomeSpecialNode.Car
        ///
        /// Parent Type: `Car`
        public struct Car: API.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { API.Objects.Car }

          public var id: API.ID { __data["id"] }
          public var name: String { __data["name"] }
          public var roofType: String? { __data["roofType"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var carFragment: CarFragment { _toFragment() }
          }

          public init(
            id: API.ID,
            name: String,
            roofType: String? = nil
          ) {
            self.init(_dataDict: DataDict(
              data: [
                "__typename": API.Objects.Car.typename,
                "id": id,
                "name": name,
                "roofType": roofType,
              ],
              fulfilledFragments: [
                ObjectIdentifier(NodeQuery.Data.Node.AsSomeSpecialNode.Car.self),
                ObjectIdentifier(SomeSpecialNodeFragment.Car.self),
                ObjectIdentifier(CarFragment.self)
              ]
            ))
          }
        }
      }
    }
  }
}
