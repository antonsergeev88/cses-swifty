enum GridPaths {
    static func countPath(restriction: String) -> Int {
        var pathCount = 0
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: 7), count: 7)
        var path = ""
        func move(x: Int, y: Int) {
            if x == 0, y == 6 {
                if path.count == 48 {
                    pathCount += 1
                }
                return
            }
            if let lastMove = path.last {
                if
                    lastMove == "U",
                    y == 0 || visited[y - 1][x],
                    x > 0 && x < 6,
                    !visited[y][x - 1] && !visited[y][x + 1]
                {
                    return
                }
                if
                    lastMove == "D",
                    y == 6 || visited[y + 1][x],
                    x > 0 && x < 6,
                    !visited[y][x - 1] && !visited[y][x + 1]
                {
                    return
                }
                if
                    lastMove == "L",
                    x == 0 || visited[y][x - 1],
                    y > 0 && y < 6,
                    !visited[y - 1][x] && !visited[y + 1][x]
                {
                    return
                }
                if
                    lastMove == "R",
                    x == 6 || visited[y][x + 1],
                    y > 0 && y < 6,
                    !visited[y - 1][x] && !visited[y + 1][x]
                {
                    return
                }
            }

            let nextMove = restriction[restriction.index(restriction.startIndex, offsetBy: path.count)]

            if nextMove == "?" || nextMove == "U" {
                if y > 0, !visited[y - 1][x] {
                    visited[y - 1][x] = true
                    path.append("U")
                    move(x: x, y: y - 1)
                    path.removeLast()
                    visited[y - 1][x] = false
                }
            }
            if nextMove == "?" || nextMove == "D" {
                if y < 6, !visited[y + 1][x] {
                    visited[y + 1][x] = true
                    path.append("D")
                    move(x: x, y: y + 1)
                    path.removeLast()
                    visited[y + 1][x] = false
                }
            }
            if nextMove == "?" || nextMove == "L" {
                if x > 0, !visited[y][x - 1] {
                    visited[y][x - 1] = true
                    path.append("L")
                    move(x: x - 1, y: y)
                    path.removeLast()
                    visited[y][x - 1] = false
                }
            }
            if nextMove == "?" || nextMove == "R" {
                if x < 6, !visited[y][x + 1] {
                    visited[y][x + 1] = true
                    path.append("R")
                    move(x: x + 1, y: y)
                    path.removeLast()
                    visited[y][x + 1] = false
                }
            }
        }
        visited[0][0] = true
        move(x: 0, y: 0)
        return pathCount
    }
}
