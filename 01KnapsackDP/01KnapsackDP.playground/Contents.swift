import UIKit

func knapSack(p: Int, w_i: [Int], v_i: [Int]) -> Int {
    let n = w_i.count
    var t = Array(repeating: Array(repeating: 0,count: p+1), count: n+1)
    for i in 0..<n+1 {
        for j in 0..<p+1 {
            if i == 0 || j == 0 {
                t[i][j] = 0
            } else if w_i[i-1] <= j {
                t[i][j] = max(v_i[i-1] + t[i-1][j-w_i[i-1]],
                              t[i-1][j])
            } else {
                t[i][j] = t[i-1][j]
            }
        }
    }
    
    return t[n][p]
}

let result = knapSack(p: 50, w_i:[10, 20, 30] , v_i:[60, 100, 120])
print(result)
