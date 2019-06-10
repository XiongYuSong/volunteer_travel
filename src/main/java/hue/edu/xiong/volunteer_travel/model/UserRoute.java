package hue.edu.xiong.volunteer_travel.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_route")
public class UserRoute {
    @Id
    @Column(name = "id")
    private String id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "create_date")
    private Date createDate;
}
