package com.ruoyi.sign.vo;

public class StatisticsHabitVo {

    private Long totalHour;
    private Long totalMinute;
    private String habitId;
    private String habitName;

    public Long getTotalHour() {
        return totalHour;
    }

    public Long getTotalMinute() {
        return totalMinute;
    }

    public String getHabitId() {
        return habitId;
    }

    public String getHabitName() {
        return habitName;
    }

    public void setTotalHour(Long totalHour) {
        this.totalHour = totalHour;
    }

    public void setTotalMinute(Long totalMinute) {
        this.totalMinute = totalMinute;
    }

    public void setHabitId(String habitId) {
        this.habitId = habitId;
    }

    public void setHabitName(String habitName) {
        this.habitName = habitName;
    }
}
