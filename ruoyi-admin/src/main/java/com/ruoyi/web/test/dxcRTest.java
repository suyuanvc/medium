package com.ruoyi.web.test;

public class dxcRTest {

   static int count = 0;

    public static void getCount(){
        count++;
        System.out.println("count="+count);
    }


    public static void main(String[] args){
        ThreadTest threadDemo = new ThreadTest();
        threadDemo.setName("我是自定义的线程2");
        threadDemo.start();

        ThreadRunableTest myThread = new ThreadRunableTest();
        Thread thread = new Thread(myThread);
        thread.start();
    }




}
