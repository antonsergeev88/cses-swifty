enum RestaurantCustomers {
    static func maxCustomers(_ customers: [(Int, Int)]) -> Int {
        let arrivals = customers.map(\.0).sorted()
        let leavings = customers.map(\.1).sorted()
        var i = 0
        var j = 0
        var max = 0
        var current = 0
        while i < customers.count {
            if arrivals[i] < leavings[j] {
                current += 1
                max = Swift.max(max, current)
                i += 1
            } else {
                current -= 1
                j += 1
            }
        }
        return max
    }
}
