struct TreasureChest {
    let type: String
    let content: String?
    
    init(type: String, content: String?) {
        self.type = type
        self.content = content
    }
}

var smallTreasureChest = TreasureChest(type: "Small Chest", content: "5 Rupees")
var regularTreasureChest = TreasureChest(type: "Regular Chest", content: "Map")
var metalliceTreasureChest = TreasureChest(type: "Metallic Chest", content: "Heart Container")

var emptySmallTreasureChest = TreasureChest(type: "Small Chest", content: nil)
var emptyRegularTreasureChest = TreasureChest(type: "Regular Chest", content: nil)
var emptyMetalliceTreasureChest = TreasureChest(type: "Metallic Chest", content: nil)

func openTreasureChestWithIfLet(treasureChest: TreasureChest){
    if let contentTreasureChest = treasureChest.content{
        print("\(contentTreasureChest) found in the \(treasureChest.type)")
    } else {
        print("Nothing found in the \(treasureChest.type)")
    }
}

func openTreasureChestWithGuardLet(treasureChest: TreasureChest){
    guard let contentTreasureChest = treasureChest.content else{
        print("Nothing found in the \(treasureChest.type)")
        return
    }
    print("\(contentTreasureChest) found in the \(treasureChest.type)")
}

func openTreasureChestWithNilCoalescing(treasureChest: TreasureChest){
    let contentTreasureChest = treasureChest.content ?? "Nothing"
    print("\(contentTreasureChest) found in the \(treasureChest.type)")
}


openTreasureChestWithIfLet(treasureChest: smallTreasureChest)
openTreasureChestWithGuardLet(treasureChest: regularTreasureChest)
openTreasureChestWithNilCoalescing(treasureChest: metalliceTreasureChest)
print("--- --- --- --- --- ---")
openTreasureChestWithIfLet(treasureChest: emptySmallTreasureChest)
openTreasureChestWithGuardLet(treasureChest: emptyRegularTreasureChest)
openTreasureChestWithNilCoalescing(treasureChest: emptyMetalliceTreasureChest)
