
let units: [[Int]] = [[100, 200, 300], [400, 500], [600]]

// Loop over array and all nested arrays.
for var x = 0; x < units.count; x++ {
    var line = ""
    for var y = 0; y < units[x].count; y++ {
        line += String(units[x][y])
        line += " "
    }
    print(line)
}

