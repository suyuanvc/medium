package com.ruoyi.web.test;

public class ThreadRunableTest implements Runnable{

    public void run() {
        for(int i = 0;i<10;i++){
            dxcRTest.getCount();
        }

    }
}
