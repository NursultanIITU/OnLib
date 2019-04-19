package entities;

public class Books {
    private int id;
    private String name;
    private String category_name;
    private String author_name;
    private int isbn;
    private int price;

    public Books(int id, String name, String category_name, String author_name, int isbn, int price) {
        this.id = id;
        this.name = name;
        this.category_name = category_name;
        this.author_name = author_name;
        this.isbn = isbn;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Books{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", category_name='" + category_name + '\'' +
                ", author_name='" + author_name + '\'' +
                ", isbn=" + isbn +
                ", price=" + price +
                '}';
    }
}
