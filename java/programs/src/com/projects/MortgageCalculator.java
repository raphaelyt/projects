package com.projects;

import java.text.NumberFormat;
import java.util.Scanner;

public class MortgageCalculator {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        double principal = 0;
        float rate = 0;
        int noPay = 0;
        while (true) {
            System.out.print("Principal Amount (in $): ");
            principal = scanner.nextDouble();
            if (principal >= 1_000 && principal <= 1_000_000){
                break;
            }
            System.out.println("Enter a value between 1,000 and 1,000,000");
        }
        while (true){
            System.out.println("Enter a value greater than 0 and less than or equal to 30");
            System.out.print("Annual Interest Rate (in %): ");
            rate = scanner.nextFloat();
            if (rate > 0 && rate <= 30){
                rate = rate/(100*12);
                break;
            }
        }
        while (true){
            System.out.println("Enter a value between 1 and 30");
            System.out.print("Number of Payments (in Years): ");
            noPay = scanner.nextInt();
            if (noPay >= 1 && noPay <=30) {
                noPay = noPay * 12;
                break;
            }
        }
        String mortgage = NumberFormat.getCurrencyInstance().format(principal*(rate*Math.pow((1+rate),noPay))/(Math.pow((1+rate),noPay)-1));
        System.out.print("Mortgage Amount: " + mortgage);
    }
}
