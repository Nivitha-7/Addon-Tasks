public class Library {
    String[] books = new String[5]; 
int count = 0;  
    void addBook(String book) {
        if (count < books.length) {
            books[count] = book;
            count++;
            System.out.println("Book added: " + book);
        } else {
            System.out.println("Library is full.");
        }
    }

      void issueBook(String book) {
        for (int i = 0; i < count; i++) {
            if (books[i].equals(book)) {
                System.out.println("Book issued: " + book);
                books[i] = books[count - 1]; 
                books[count - 1] = null;
                count--;
                return;
            }
        }
        System.out.println("Book not available.");
    }


    void removeBook(String book) {
        for (int i = 0; i < count; i++) {
            if (books[i].equals(book)) {
                System.out.println("Book removed: " + book);
                books[i] = books[count - 1];
                books[count - 1] = null;
                count--;
                return;
            }
        }
        System.out.println("Book not found.");
    }

    void showBooks() {
        System.out.println("Books in library:");
        for (int i = 0; i < count; i++) {
            System.out.println("- " + books[i]);
        }
        if (count == 0) {
            System.out.println("No books available.");
        }
    }

    public static void main(String[] args) {
        Library lib = new Library();
        lib.addBook("The Jungle book");
        lib.addBook("Fairytale");
        lib.showBooks();

        lib.issueBook("The Jungle book");
        lib.showBooks();

        lib.removeBook("FairyTale");
        lib.showBooks();
    }
}
