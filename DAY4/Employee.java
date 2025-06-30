package sam;

import java.io.*;
import java.util.*;

public class Employee {


    public static void createFile() throws Exception {
        FileWriter fw = new FileWriter("employee.txt");
        fw.write("Masha\nKaa\nRicky\nPoniya\nCheel\n");
        fw.close();
        System.out.println("Employees added.");
    }


    public static void readFile() throws Exception {
        Scanner sc = new Scanner(new File("C:\\Users\\nivit\\OneDrive\\Documents\\Sam.txt"));
        System.out.println("Employee List:");
        while (sc.hasNextLine()) {
            System.out.println(sc.nextLine());
        }
        sc.close();
    }


    public static void update(String oldName, String newName) throws Exception {
        Scanner sc = new Scanner(new File("C:\\Users\\nivit\\OneDrive\\Documents\\Sam.txt"));
        String data = "";
        while (sc.hasNextLine()) {
            String line = sc.nextLine();
            if (line.equals(oldName)) data += newName + "\n";
            else data += line + "\n";
        }
        sc.close();
        FileWriter fw = new FileWriter("C:\\Users\\nivit\\OneDrive\\Documents\\Sam.txt");
        fw.write(data);
        fw.close();
        System.out.println("Updated: " + oldName + " to " + newName);
    }

    public static void delete(String name) throws Exception {
        Scanner sc = new Scanner(new File("C:\\Users\\nivit\\OneDrive\\Documents\\Sam.txt")));
        String data = "";
        while (sc.hasNextLine()) {
            String line = sc.nextLine();
            if (!line.equals(name)) data += line + "\n";
        }
        sc.close();
        FileWriter fw = new FileWriter("C:\\Users\\nivit\\OneDrive\\Documents\\Sam.txt");
        fw.write(data);
        fw.close();
        System.out.println("Deleted: " + name);
    }

    public static void main(String[] args) throws Exception {
        createFile();      
        readFile();                          
        update("Kaa", "Kaa Singh");          
        delete("Ricky");                     
        readFile();                         
    }
}
