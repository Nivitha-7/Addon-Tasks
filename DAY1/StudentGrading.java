package sample;

import java.util.Scanner;

public class StudentGrading {

        public static String calculateGrade(double marks) {
        if (marks >= 90) {
            return "A";
        } else if (marks >= 80) {
            return "B";
        } else if (marks >= 70) {
            return "C";
        } else if (marks >= 60) {
            return "D";
        } else if (marks >= 50) {
            return "E";
        } else {
            return "Fail";
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter student name: ");
        String name = scanner.nextLine();

        System.out.print("Enter student marks (0 to 100): ");
        double marks = scanner.nextDouble();

        if (marks < 0 || marks > 100) {
            System.out.println("Invalid marks. Please enter marks between 0 and 100.");
        } else {
            String grade = calculateGrade(marks);

            System.out.println("\n--- Student Result ---");
            System.out.println("Name  : " + name);
            System.out.println("Marks : " + marks);
            System.out.println("Grade : " + grade);
        }

        scanner.close();
    }
}

