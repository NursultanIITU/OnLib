package entities;

public class Users {
    private int id;
    private String studentID;
    private String fullname;
    private String email;
    private String password;
    private String mob_number;
    private int active;
    private String reg_date;
    private String update_date;

    public Users() {
    }

    public Users(int id, String studentID, String fullname, String email, String password, String mob_number, int active, String reg_date, String update_date) {
        this.id = id;
        this.studentID = studentID;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.mob_number = mob_number;
        this.active = active;
        this.reg_date = reg_date;
        this.update_date = update_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
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

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getMob_number() {
        return mob_number;
    }

    public void setMob_number(String mob_number) {
        this.mob_number = mob_number;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }

    public String getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(String update_date) {
        this.update_date = update_date;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", studentID='" + studentID + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", fullname='" + fullname + '\'' +
                ", mob_number='" + mob_number + '\'' +
                ", active=" + active +
                ", reg_date='" + reg_date + '\'' +
                ", update_date='" + update_date + '\'' +
                '}';
    }
}
