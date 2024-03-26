// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct TruckFragment: API.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment TruckFragment on Truck { __typename id name roofType isRefrigerated }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { API.Objects.Truck }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", API.ID.self),
    .field("name", String.self),
    .field("roofType", String?.self),
    .field("isRefrigerated", Bool.self),
  ] }

  public var id: API.ID { __data["id"] }
  public var name: String { __data["name"] }
  public var roofType: String? { __data["roofType"] }
  public var isRefrigerated: Bool { __data["isRefrigerated"] }

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
        ObjectIdentifier(TruckFragment.self)
      ]
    ))
  }
}
