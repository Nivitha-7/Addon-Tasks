import java.util.Scanner;

public class SimpleInterest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        
        System.out.print("Enter Principal: ");
        double principal = sc.nextDouble();

        System.out.print("Enter Rate (%): ");
        double rate = sc.nextDouble();

        System.out.print("Enter Time (years): ");
        double time = sc.nextDouble();

        double si = 0;

        
        if (principal > 0 && rate > 0 && time > 0) {
            si = (principal * rate * time) / 100;
            System.out.println("Simple Interest = " + si);
        }

        if (principal <= 0 || rate <= 0 || time <= 0) {
            System.out.println("Please enter positive values only!");
        }
    }
}