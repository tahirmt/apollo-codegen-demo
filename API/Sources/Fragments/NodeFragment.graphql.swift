// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct NodeFragment: API.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment NodeFragment on Node { __typename ...CarFragment ...TruckFragment ...SomeSpecialNodeFragment }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { API.Interfaces.Node }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .inlineFragment(AsCar.self),
    .inlineFragment(AsTruck.self),
    .inlineFragment(AsSomeSpecialNode.self),
  ] }

  public var asCar: AsCar? { _asInlineFragment() }
  public var asTruck: AsTruck? { _asInlineFragment() }
  public var asSomeSpecialNode: AsSomeSpecialNode? { _asInlineFragment() }

  public init(
    __typename: String
  ) {
    self.init(_dataDict: DataDict(
      data: [
        "__typename": __typename,
      ],
      fulfilledFragments: [
        ObjectIdentifier(NodeFragment.self)
      ]
    ))
  }

  /// AsCar
  ///
  /// Parent Type: `Car`
  public struct AsCar: API.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = NodeFragment
    public static var __parentType: ApolloAPI.ParentType { API.Objects.Car }
    public static var __selections: [ApolloAPI.Selection] { [
      .fragment(CarFragment.self),
    ] }

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
          ObjectIdentifier(NodeFragment.self),
          ObjectIdentifier(NodeFragment.AsCar.self),
          ObjectIdentifier(CarFragment.self)
        ]
      ))
    }
  }

  /// AsTruck
  ///
  /// Parent Type: `Truck`
  public struct AsTruck: API.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = NodeFragment
    public static var __parentType: ApolloAPI.ParentType { API.Objects.Truck }
    public static var __selections: [ApolloAPI.Selection] { [
      .fragment(TruckFragment.self),
    ] }

    public var id: API.ID { __data["id"] }
    public var name: String { __data["name"] }
    public var roofType: String? { __data["roofType"] }
    public var isRefrigerated: Bool { __data["isRefrigerated"] }

    public struct Fragments: FragmentContainer {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

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
          ObjectIdentifier(NodeFragment.self),
          ObjectIdentifier(NodeFragment.AsTruck.self),
          ObjectIdentifier(TruckFragment.self)
        ]
      ))
    }
  }

  /// AsSomeSpecialNode
  ///
  /// Parent Type: `SomeSpecialNode`
  public struct AsSomeSpecialNode: API.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = NodeFragment
    public static var __parentType: ApolloAPI.ParentType { API.Objects.SomeSpecialNode }
    public static var __selections: [ApolloAPI.Selection] { [
      .fragment(SomeSpecialNodeFragment.self),
    ] }

    public var id: API.ID { __data["id"] }
    public var cars: [Car?]? { __data["cars"] }

    public struct Fragments: FragmentContainer {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

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
          ObjectIdentifier(NodeFragment.self),
          ObjectIdentifier(NodeFragment.AsSomeSpecialNode.self),
          ObjectIdentifier(SomeSpecialNodeFragment.self)
        ]
      ))
    }

    /// AsSomeSpecialNode.Car
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
            ObjectIdentifier(NodeFragment.AsSomeSpecialNode.Car.self),
            ObjectIdentifier(SomeSpecialNodeFragment.Car.self),
            ObjectIdentifier(CarFragment.self)
          ]
        ))
      }
    }
  }
}
