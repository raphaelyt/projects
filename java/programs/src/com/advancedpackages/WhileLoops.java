package com.advancedpackages;

import java.util.Locale;
import java.util.Scanner;

public class WhileLoops {
    public static void main(String[] args){
//        int i = 0;
//        while (i>0){
//            System.out.println("Hello World" + i);
//            i--;
//        }
        String input = "";
        Scanner scanner = new Scanner(System.in);
        while (!input.equals("quit")){
            System.out.print("Input: ");
            input = scanner.next().toLowerCase();
            System.out.println(input);
        }
    }
}
