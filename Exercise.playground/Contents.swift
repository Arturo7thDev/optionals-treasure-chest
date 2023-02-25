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
    // Write here your code to unwrap the contents of the treasure chest (if let)
}

func openTreasureChestWithGuardLet(treasureChest: TreasureChest){
    // Write here your code to unwrap the contents of the treasure chest (guard let)
}

func openTreasureChestWithNilCoalescing(treasureChest: TreasureChest){
    // Write here your code to unwrap the contents of the treasure chest (??)
}

openTreasureChestWithIfLet(treasureChest: smallTreasureChest)
openTreasureChestWithGuardLet(treasureChest: regularTreasureChest)
openTreasureChestWithNilCoalescing(treasureChest: metalliceTreasureChest)
print("--- --- --- --- --- ---")
openTreasureChestWithIfLet(treasureChest: emptySmallTreasureChest)
openTreasureChestWithGuardLet(treasureChest: emptyRegularTreasureChest)
openTreasureChestWithNilCoalescing(treasureChest: emptyMetalliceTreasureChest)

/*
 EXPECTED RESULT:
 
 5 Rupees found in the Small Chest
 Map found in the Regular Chest
 Heart Container found in the Metallic Chest
 --- --- --- --- --- ---
 Nothing found in the Small Chest
 Nothing found in the Regular Chest
 Nothing found in the Metallic Chest
 */
