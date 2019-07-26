package com.sepro.Authenticationserver.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity(name = "PERMISSION")
public class Permission extends BaseIdEntity implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column(name = "NAME")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
