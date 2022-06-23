package com.programs;
// Primitive Type
//public class PTvRT {
//    public static void main(String[] args){
//        byte x = 1;
//        byte y = x;
//        x = 2;
//        System.out.println(y);
//    }
//}

import java.awt.*;

//Reference Type
public class PTvRT {
    public static void main(String[] args){
        Point point1 = new Point(1, 1);
        Point point2 = point1;
        point1.x = 2;
        System.out.println(point2);

    }
}