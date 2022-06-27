package com.programs;

import java.text.NumberFormat;

public class FormattingNum {
    public static void main(String[] args){
//        NumberFormat currency = NumberFormat.getCurrencyInstance();
//        NumberFormat percent = NumberFormat.getPercentInstance();
        String result = NumberFormat.getPercentInstance().format(0.1);

//        String result = percent.format(0.1);
        System.out.println(result);
    }
}
