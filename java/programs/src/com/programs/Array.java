package com.programs;
import java.util.Arrays;

public class Array {
    public static void main(String[] args){
//        int[] numbers = new int[5];
//        numbers[0] = 1;
//        numbers[1] = 2;
//        System.out.println(Arrays.toString(numbers));
        //numbers[10] = 3; will crash the program
        int[] numbers = {2,3,4,5,1};
//        System.out.println(numbers.length);
        Arrays.sort(numbers);
        System.out.println(Arrays.toString(numbers));
    }
}
