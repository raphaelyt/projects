package com.programs;

import java.util.Scanner;

public class ReadingInput {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.print("Name: ");
//        byte age = scanner.nextByte();
//        String name = scanner.next(); // Only gets the first token
        String name = scanner.nextLine().trim();
        System.out.println("You are " + name);
    }
}
