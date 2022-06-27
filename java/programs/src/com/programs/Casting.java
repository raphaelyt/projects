package com.programs;

public class Casting {
    public static void main(String[] args){
        // Implicit casting
        // byte > short > int > long > float > double
//        double x = 1.1;
//        double y = x + 2;

        //Explicit Casting
//        double x = 1.1;
//        int y = (int)x + 2;
//        System.out.println(y);

        String x = "1";
        int y = Integer.parseInt(x)+2;
        System.out.println(y);
    }
}
