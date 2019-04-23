package entities;

public class IBooks {
    private int id;
    private String studentName;
    private String book_name;
    private int isbn;
    private int returnstatus;
    private String issuedDate;
    private String returnedDate;

    public IBooks(int id, String studentName, String book_name, int isbn, int returnstatus, String issuedDate, String returnedDate) {
        this.id = id;
        this.studentName = studentName;
        this.book_name = book_name;
        this.isbn = isbn;
        this.returnstatus = returnstatus;
        this.issuedDate = issuedDate;
        this.returnedDate = returnedDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public int getReturnstatus() {
        return returnstatus;
    }

    public void setReturnstatus(int returnstatus) {
        this.returnstatus = returnstatus;
    }

    public String getIssuedDate() {
        return issuedDate;
    }

    public void setIssuedDate(String issuedDate) {
        this.issuedDate = issuedDate;
    }

    public String getReturnedDate() {
        return returnedDate;
    }

    public void setReturnedDate(String returnedDate) {
        this.returnedDate = returnedDate;
    }

    @Override
    public String toString() {
        return "IBooks{" +
                "id=" + id +
                ", studentName='" + studentName + '\'' +
                ", book_name='" + book_name + '\'' +
                ", isbn='" + isbn + '\'' +
                ", returnstatus=" + returnstatus +
                ", issuedDate='" + issuedDate + '\'' +
                ", returnedDate='" + returnedDate + '\'' +
                '}';
    }
}
