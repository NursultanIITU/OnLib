package entities;

public class Categories {
    private int id;
    private String name;
    private int status;
    private String reg_date;
    private String updatation_date;

    public Categories(int id, String name, int status, String reg_date, String updatation_date) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.reg_date = reg_date;
        this.updatation_date = updatation_date;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }

    public String getUpdatation_date() {
        return updatation_date;
    }

    public void setUpdatation_date(String updatation_date) {
        this.updatation_date = updatation_date;
    }

    @Override
    public String toString() {
        return "Categories{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", status=" + status +
                ", reg_date='" + reg_date + '\'' +
                ", updatation_date='" + updatation_date + '\'' +
                '}';
    }
}
