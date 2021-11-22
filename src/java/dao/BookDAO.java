package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.book.Author;
import model.book.Book;
import model.book.Publisher;

public class BookDAO {
    private Connection connection;
    private Statement st;
    private ResultSet rs;

    public BookDAO() {
        String className = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/bookstoremvc?useSSL=false";
        try {
            Class.forName(className);
            connection = DriverManager.getConnection(url, "root", "long12345");
            System.out.println("ket noi thanh con csdl");
        } catch (Exception e) {
            System.err.println("Khong ket noi duoc" + e.toString());
        }
    }

    public ArrayList<Book> getBookNew() {
        String query = "SELECT b.* " + "FROM bookstoremvc.book b\n" + "INNER JOIN bookstoremvc.author a ON a.id=b.AuthorID \n" + "INNER JOIN bookstoremvc.publisher p ON b.PublisherID=p.id;";
        ArrayList<Book> arr = new ArrayList<Book>();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("Name");
                String image = rs.getString("Image");
                float price = rs.getFloat("Price");
                int inventory = rs.getInt("Inventory");
                String category = rs.getString("Category");
                float discount = rs.getFloat("Discount");
                Book book = new Book(id, name, image, price, inventory, category, discount);
                arr.add(book);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }
    
 
    public ArrayList<Author> getAuthorList() {
        String query = "SELECT * FROM author ;";
        ArrayList<Author> arr = new ArrayList<Author>();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("Name");
                String biography = rs.getString("Biography");
                Author author = new Author(id, name, biography);
                arr.add(author);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }
    
    public ArrayList<Publisher> getPublisherList() {
        String query = "SELECT * FROM publisher ;";
        ArrayList<Publisher> arr = new ArrayList<Publisher>();
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("Name");
                String address = rs.getString("Address");
                Publisher publisher = new Publisher(id, name, address);
                arr.add(publisher);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arr;
    }

    public Book getBookById(int id) {
        String query = "SELECT b.*, a.*, p.*, a.Name as authorName, a.id as authorId, p.Name as publisherName, p.id as publisherId FROM bookstoremvc.book b INNER JOIN bookstoremvc.author a ON a.id=b.AuthorID INNER JOIN bookstoremvc.publisher p ON b.PublisherID=p.id and b.id=" + id;
        Book book = null;
        try {
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                String name = rs.getString("Name");
                String image = rs.getString("Image");
                float price = rs.getFloat("Price");
                String summary = rs.getString("Summary");
                String language = rs.getString("Language");
                String authorName = rs.getString("authorName");
                String publisherName = rs.getString("publisherName");
                int inventory = rs.getInt("Inventory");
                String category = rs.getString("Category");
                float discount = rs.getFloat("Discount");
                book = new Book(id, name, image, price, inventory, summary, language, category, discount, authorName, publisherName);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return book;
    }

    public void deleteBook(int bookId) throws SQLException {
        String query = "DELETE FROM book WHERE id=?;";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, bookId);
        ps.executeUpdate();
    }
    
    public void addBook(String title, String image, float price, String summary , String language, String category, int inventory, float discount, String description
            , int authorId, int publisherId) throws SQLException {
        String addBook = "INSERT INTO book (Name, Image, Price, Summary, Language, Category, Inventory, Discount, Description, AuthorID, PublisherID) VALUES (?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps3 = connection.prepareStatement(addBook);
        ps3.setString(1, title);
        ps3.setFloat(2, price);
        ps3.setString(3, image);
        ps3.setString(4, summary);
        ps3.setString(5, language);
        ps3.setString(6, category);
        ps3.setInt(7, inventory);
        ps3.setFloat(8, discount);
        ps3.setString(9, description);
        ps3.setInt(10, authorId);
        ps3.setInt(11, publisherId);
        ps3.executeUpdate();
    }
    
    public void addAuthor(String name, String biography) throws SQLException {
        String addAuthor = "INSERT INTO author (Name, Biography) VALUES (?,?)";
        PreparedStatement ps1 = connection.prepareStatement(addAuthor);
        ps1.setString(1, name);
        ps1.setString(2, biography);
        ps1.executeUpdate();
    }
    
    public void chageAuthor(int id, String name, String biography) throws SQLException {
        String addPublisher = "UPDATE author Name=?, Biography=? WHERE id = ?";
        PreparedStatement ps2 = connection.prepareStatement(addPublisher);
        ps2.setString(1, name);
        ps2.setString(2, biography);
        ps2.setInt(3, id);
        ps2.executeUpdate();
    }
    
    public void addPublisher(String name, String address) throws SQLException {
        String addPublisher = "INSERT INTO publisher (Name, Address) VALUES (?,?)";
        PreparedStatement ps2 = connection.prepareStatement(addPublisher);
        ps2.setString(1, name);
        ps2.setString(2, address);
        ps2.executeUpdate();
    }
    
    public void chagePublisher(int id, String name, String address) throws SQLException {
        String addPublisher = "UPDATE publisher Name=?, Address=? WHERE id = ?";
        PreparedStatement ps2 = connection.prepareStatement(addPublisher);
        ps2.setString(1, name);
        ps2.setString(2, address);
        ps2.setInt(3, id);
        ps2.executeUpdate();
    }
    
    public void changeBook(int id, String title, String image, float price, String summary , String language, String category, int inventory, float discount, String description
            , int authorId, int publisherId) throws SQLException {
        String updateBook = "UPDATE shoes SET Name=?, Image=?, Price=?, Summary=?, Language=?, Category=?, Inventory=?, Discount=?, Description=?, AuthorID=?, PublisherIDWHERE id = ?";
        PreparedStatement ps3 = connection.prepareStatement(updateBook);
        ps3.setString(1, title);
        ps3.setFloat(2, price);
        ps3.setString(3, image);
        ps3.setString(4, summary);
        ps3.setString(5, language);
        ps3.setString(6, category);
        ps3.setInt(7, inventory);
        ps3.setFloat(8, discount);
        ps3.setString(9, description);
        ps3.setInt(10, authorId);
        ps3.setInt(11, publisherId);
        ps3.setInt(12, id);
        ps3.executeUpdate();
    }
}
