package hue.edu.xiong.volunteer_travel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "travel_route")
public class TravelRoute {

    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "routeName")
    private String name;

    @Column(name = "routeDescribe")
    private String describe;

    @Column(name = "routeAddress")
    private String address;

    @Column(name = "routeStatus")
    private Integer status;

    @Column(name = "collect_number")
    private Integer collectNumber;

    @Column(name = "createDate")
    private Date createDate;

    @Column(name = "update_date")
    private Date updateDate;
}
