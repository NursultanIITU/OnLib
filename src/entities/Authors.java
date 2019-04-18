package entities;

public class Authors {
    private int id;
    private String name;
    private String reg_date;
    private String update_date;

    public Authors(int id, String name, String reg_date, String update_date) {
        this.id = id;
        this.name = name;
        this.reg_date = reg_date;
        this.update_date = update_date;
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
        return "Authors{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", reg_date='" + reg_date + '\'' +
                ", update_date='" + update_date + '\'' +
                '}';
    }
}
