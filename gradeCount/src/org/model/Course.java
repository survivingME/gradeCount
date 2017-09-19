package org.model;

/**
 * Created by trembleguy on 2017/9/10.
 */
public class Course {
    private String cno;
    private String cname;
    private String isRequired;
    private String credit;

    public String getCno() {
        return cno;
    }
    public String getCname() {
        return cname;
    }
    public String getIsRequired() {
        return isRequired;
    }
    public String getCredit() {
        return credit;
    }
    public void setCno(String cno) {
        this.cno = cno;
    }
    public void setCname(String cname) {
        this.cname = cname;
    }
    public void setIsRequired(String isRequired) {
        this.isRequired = isRequired;
    }
    public void setCredit(String credit) {
        this.credit = credit;
    }
}
