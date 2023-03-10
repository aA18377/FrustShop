package com.fff.pojo;


public class Manage {

  private long id;
  private String userName;
  private String passWord;
  private String realName;

  public Manage(long id, String userName, String passWord, String realName) {
    this.id = id;
    this.userName = userName;
    this.passWord = passWord;
    this.realName = realName;
  }

  public Manage() {
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public String getPassWord() {
    return passWord;
  }

  public void setPassWord(String passWord) {
    this.passWord = passWord;
  }


  public String getRealName() {
    return realName;
  }

  public void setRealName(String realName) {
    this.realName = realName;
  }

}
