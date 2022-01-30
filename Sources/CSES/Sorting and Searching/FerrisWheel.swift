enum FerrisWheel {
    static func countGondolas(children: [Int], maxWeight: Int) -> Int {
        let children = children.sorted()
        var left = 0
        var right = children.count - 1
        var count = 0
        while left <= right {
            guard left != right else {
                count += 1
                break
            }
            if children[right] + children[left] > maxWeight {
                right -= 1
                count += 1
            } else {
                left += 1
                right -= 1
                count += 1
            }
        }
        return count
    }
}
