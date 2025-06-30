-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
package Programs;
import java.util.HashSet;
import java.util.Set;
public class Program1Class {

    public static void main(String[] args) {
        Set<String> emailSet = new HashSet<>();

        emailSet.add("lasa@gmail.com");
        emailSet.add("sathi@gmail.com");
        emailSet.add("abc@gmail.com"); // Duplicate email
        emailSet.add("user3@example.com");

        // Printing the unique email addresses
        System.out.println("Unique email addresses:");
        for (String email : emailSet) {
            System.out.println(email);
        }
    }}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
