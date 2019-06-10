package hue.edu.xiong.volunteer_travel.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "travel_diary")
public class TravelDiary {

    @Id
    @Column(name = "id")
    private String id;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    @Column(name = "diaryDescribe")
    private String describe;
    @Column(name = "createDate")
    private Date createDate;

    public String getId() { return id; }

    public void setId(String id) { this.id = id; }

    public User getUser() { return user; }

    public void setUser(User user) { this.user = user; }

    public String getDescribe() { return describe; }

    public void setDescribe(String describe) { this.describe = describe; }

    public Date getCreateDate() { return createDate; }

    public void setCreateDate(Date createDate) { this.createDate = createDate; }
}
