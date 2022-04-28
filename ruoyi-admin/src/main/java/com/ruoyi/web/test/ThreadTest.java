package com.ruoyi.web.test;

public class ThreadTest extends Thread{
    static Integer count = 0;


    public void run() {
        getCount();
    }

    public static void main(String[] args){
        ThreadTest threadDemo = new ThreadTest();
        threadDemo.setName("1号窗口");
        threadDemo.start();

        ThreadTest threadDemo2 = new ThreadTest();
        threadDemo2.setName("2号窗口");
        threadDemo2.start();
    }

    public synchronized void getCount(){
        //编写自己的线程代码
        for(int i = 0;i<10;i++){
            count++;
            System.out.println(this.getName()+":count="+count);
        }
    }



}
