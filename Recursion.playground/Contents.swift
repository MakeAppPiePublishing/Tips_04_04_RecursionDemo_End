//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//


//: Recursion Demo
//: Definintion of recursion: See Recursion until something good happens

func factorial(_ n:Int)->Int{
    if n >= 1{
        return factorial(n - 1) * n
    } else {
        return 1
    }
}
factorial(5)
