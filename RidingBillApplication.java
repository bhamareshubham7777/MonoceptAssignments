package com.techlabs.assignment2;

import java.util.Scanner;

public class RidingBillApplication {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("ENTER YOUR HEIGHT: ");
		int height=scanner.nextInt();
		
		int payAmount;
		int choice;
		int photoCharge=300;
		
		if(height>120) {
			System.out.println("ENTER YOUR AGE:");
			int age=scanner.nextInt();
			
			if(age<12) {
				payAmount=500;
				System.out.println("DO YOU WANT A PHOTO: 1:Yes 2:No");
				choice=scanner.nextInt();
				if(choice==1) {
					calculateBillAmount(payAmount,photoCharge);
				}else if(choice==2){
					System.out.println("YOUR BILL IS: "+payAmount+" RS.");
				}
			}else if(age>=12 && age<18) {
				payAmount=700;
				System.out.println("DO YOU WANT A PHOTO: 1:Yes 2:No");
				choice=scanner.nextInt();
				if(choice==1) {
					calculateBillAmount(payAmount,photoCharge);
				}else if(choice==2){
					System.out.println("YOUR BILL IS: "+payAmount+" RS.");
				}
			}else if(age>=18 && age<45) {
				payAmount=1000;
				System.out.println("DO YOU WANT A PHOTO: 1:Yes 2:No");
				choice=scanner.nextInt();
				if(choice==1) {
					calculateBillAmount(payAmount,photoCharge);
				}else if(choice==2){
					System.out.println("YOUR BILL IS:F "+payAmount+" RS.");
				}
			}else if(age>=45 && age<=55){
				payAmount=0;
				System.out.println("DO YOU WANT A PHOTO: 1:Yes 2:No");
				choice=scanner.nextInt();
				if(choice==1) {
					calculateBillAmount(payAmount,photoCharge);
				}else if(choice==2){
					System.out.println("YOUR BILL IS: "+payAmount+" RS.");
				}
			}
		}else {
			System.out.println("SORRY,YOU CAN'T RIDE");
		}

	}

	public static void calculateBillAmount(int payAmount, int photoCharge) {
		int totalBillAmount=payAmount+photoCharge;
		System.out.println("YOUR TOTAL BILL IS: "+totalBillAmount+" RS.");
		
	}

}