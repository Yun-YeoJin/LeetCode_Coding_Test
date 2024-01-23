//
//  Two Sum.swift
//  LeetCode_Coding_Test
//
//  Created by 윤여진 on 1/23/24.
//

import Foundation
/**
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.
 
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let newNums = nums.map{ Int($0) }
    let count = newNums.count
    
    for i in 1...count {
        let first = newNums[count - i]
        
        for j in 0..<count - i {
            let second = newNums[j]
            
            if first + second == target {
                return [j, count - i]
            }
            
        }
    }
    
    return []
}

