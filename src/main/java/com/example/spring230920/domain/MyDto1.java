package com.example.spring230920.domain;

import java.util.stream.Stream;

public class MyDto1 {
    // property 이름 : get,set을 생략하고 소문자로 시작

    // name property
    // homeAddress property
    private String name;
    private String homeAddress;
    private String MYHOME;
    private Boolean married;

    private boolean checked;

    public boolean isChecked() {
        // boolean 타입은 get대신 is를 붙일수도 있다
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public Boolean getMarried() {
        return married;
    }

    public void setMarried(Boolean married) {
        this.married = married;
    }

    public String getMYHOME() {
        return MYHOME;
    }

    public void setMYHOME(String MYHOME) {
        this.MYHOME = MYHOME;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
