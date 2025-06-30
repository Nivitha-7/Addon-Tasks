package Programs;

import java.util.*;

public class EasyStudentAverage {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Create a HashMap to store student name and total marks
        HashMap<String, Integer> studentMarks = new HashMap<>();
        HashMap<String, Integer> subjectCount = new HashMap<>();

        System.out.print("How many students? ");
        int n = sc.nextInt();
        sc.nextLine(); // consume newline

        for (int i = 0; i < n; i++) {
            System.out.print("\nEnter student name: ");
            String name = sc.nextLine();

            System.out.print("How many subjects? ");
            int subjects = sc.nextInt();

            int total = 0;
            for (int j = 0; j < subjects; j++) {
                System.out.print("Enter mark " + (j + 1) + ": ");
                total += sc.nextInt();
            }
            sc.nextLine(); 

            studentMarks.put(name, total);
            subjectCount.put(name, subjects);
        }

       
        System.out.println("\n--- Averages ---");
        for (String name : studentMarks.keySet()) {
            int total = studentMarks.get(name);
            int subjects = subjectCount.get(name);
            double average = (double) total / subjects;
            System.out.println(name + " → Average: " + average);
        }
}}
