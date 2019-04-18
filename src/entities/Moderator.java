package entities;

public class Moderator {
    private int id;
    private String fullName;
    private String email;
    private String password;
    private String username;
    private String updation_date;

    public Moderator(int id, String fullName, String email, String password, String username, String updation_date) {
        this.id = id;
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.username = username;
        this.updation_date = updation_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUpdation_date() {
        return updation_date;
    }

    public void setUpdation_date(String updation_date) {
        this.updation_date = updation_date;
    }

    @Override
    public String toString() {
        return "Moderator{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", updation_date='" + updation_date + '\'' +
                '}';
    }
}
