// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct CarFragment: API.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment CarFragment on Car { __typename id name roofType }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { API.Objects.Car }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", API.ID.self),
    .field("name", String.self),
    .field("roofType", String?.self),
  ] }

  public var id: API.ID { __data["id"] }
  public var name: String { __data["name"] }
  public var roofType: String? { __data["roofType"] }

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
        ObjectIdentifier(CarFragment.self)
      ]
    ))
  }
}
