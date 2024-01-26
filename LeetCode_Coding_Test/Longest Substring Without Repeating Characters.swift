//
//  Longest Substring Without Repeating Characters.swift
//  LeetCode_Coding_Test
//
//  Created by 윤여진 on 1/26/24.
//

import Foundation
/**
 Given a string s, find the length of the longest
 substring without repeating characters.

 Example 1:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 
 Example 2:
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
*/

func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var result: Int = 0
    var arr = Array(s)
    var stack: [Character] = []
    
    for i in arr {
        if let index = stack.firstIndex(of: i) {
            stack.removeSubrange(0...index)
        }
        stack.append(i)
        result = max(result, stack.count)
    }

    return result
    
}
