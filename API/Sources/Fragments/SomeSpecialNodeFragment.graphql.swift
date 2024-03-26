// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct SomeSpecialNodeFragment: API.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment SomeSpecialNodeFragment on SomeSpecialNode { __typename id cars { __typename ...CarFragment } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { API.Objects.SomeSpecialNode }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", API.ID.self),
    .field("cars", [Car?]?.self),
  ] }

  public var id: API.ID { __data["id"] }
  public var cars: [Car?]? { __data["cars"] }

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
        ObjectIdentifier(SomeSpecialNodeFragment.self)
      ]
    ))
  }

  /// Car
  ///
  /// Parent Type: `Car`
  public struct Car: API.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { API.Objects.Car }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
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
          ObjectIdentifier(SomeSpecialNodeFragment.Car.self),
          ObjectIdentifier(CarFragment.self)
        ]
      ))
    }
  }
}
