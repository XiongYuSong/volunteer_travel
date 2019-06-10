package hue.edu.xiong.volunteer_travel.model;



import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "travel_strategy")
public class TravelStrategy {

    @Id
    @Column(name = "id")
    private String id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "strategy_describe")
    private String describe;

    @Column(name = "create_date")
    private Date createDate;

    @Column(name = "strategy_status")
    private Integer status;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getId() { return id; }

    public void setId(String id) { this.id = id; }

    public User getUser() { return user; }

    public void setUser(User user) { this.user = user; }

    public String getDescribe() { return describe; }

    public void setDescribe(String describe) { this.describe = describe; }

    public Date getCreateDate() { return createDate; }

    public void setCreateDate(Date createDate) { this.createDate = createDate; }
}
