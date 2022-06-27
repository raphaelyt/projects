package com.projects;

import java.text.NumberFormat;
import java.util.Scanner;

public class MortgageCalculator {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.print("Principal Amount (in $): ");
        double principal = scanner.nextDouble();
        System.out.print("Annual Interest Rate (in %): ");
        float rate = scanner.nextFloat()/(100*12);
        System.out.print("Number of Payments (in Years): ");
        int noPay = scanner.nextInt()*12;
        String mortgage = NumberFormat.getCurrencyInstance().format(principal*(rate*Math.pow((1+rate),noPay))/(Math.pow((1+rate),noPay)-1));
        System.out.print("Mortgage Amount:" + mortgage);
    }
}
