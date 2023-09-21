package com.example.spring230920.domain;

public class Student {
    // email property (쓰기)
    // info property : X
    // information property (읽기, 쓰기)
    private String email;
    private String info;

    @Override
    public String toString() {
        return "Student{" +
                "email='" + email + '\'' +
                ", info='" + info + '\'' +
                '}';
    }

//    public String getEmail() {
//        return email;
//    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInformation() {
        return info;
    }

    public void setInformation(String info) {
        this.info = info;
    }
}
