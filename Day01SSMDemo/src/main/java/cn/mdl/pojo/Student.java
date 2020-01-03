package cn.mdl.pojo;

import java.util.Date;

public class Student {
    private Integer sno;

    private String sname;

    private String ssex;

    private Date sbirthday;

    private Integer sage;

    private String saddtress;

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex == null ? null : ssex.trim();
    }

    public Date getSbirthday() {
        return sbirthday;
    }

    public void setSbirthday(Date sbirthday) {
        this.sbirthday = sbirthday;
    }

    public Integer getSage() {
        return sage;
    }

    public void setSage(Integer sage) {
        this.sage = sage;
    }

    public String getSaddtress() {
        return saddtress;
    }

    public void setSaddtress(String saddtress) {
        this.saddtress = saddtress == null ? null : saddtress.trim();
    }
}