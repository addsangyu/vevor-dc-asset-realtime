package com.vevor.dc.asset.realtime.utils;

import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
import java.util.Date;

public class DateUtils {

    public static final DateTimeFormatter yyyy_MM_dd_HH_mm_ss = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    public static final DateTimeFormatter yyyyMMdd_HH_mm_ss = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    public static String getToday(String patten) {
        return getToday(DateTimeFormatter.ofPattern(patten));
    }

    public static String getToday(DateTimeFormatter patten) {
        return ZonedDateTime.now().format(patten);
    }

    public static String getDateTime() {
        return getDateTime(0, ChronoUnit.HOURS, yyyy_MM_dd_HH_mm_ss);
    }
    public static String getDateTime(int num) {
        return getDateTime(num, ChronoUnit.HOURS, yyyy_MM_dd_HH_mm_ss);
    }

    public static String getDateTime(String patten) {
        return getDateTime(0, ChronoUnit.HOURS, DateTimeFormatter.ofPattern(patten));
    }

    public static String getDateTime(long num, TemporalUnit unit) {
        return ZonedDateTime.now().plus(num, unit).format(yyyy_MM_dd_HH_mm_ss);
    }

    public static String getDateTime(long num, TemporalUnit unit, DateTimeFormatter formatter) {
        return ZonedDateTime.now().plus(num, unit).format(formatter);
    }

    public static String getDateTime(long num, TemporalUnit unit, String formatter) {
        return getDateTime(num, unit, DateTimeFormatter.ofPattern(formatter));
    }

    public static String getDate(String patten, long to) {
        return ZonedDateTime.now().plusDays(to).format(DateTimeFormatter.ofPattern(patten));
    }

    public static String formatMilli(long time, String patten) {
        return formatMilli(time, DateTimeFormatter.ofPattern(patten));
    }

    public static String formatMilli(long time, DateTimeFormatter formatter) {
        return ZonedDateTime.ofInstant(Instant.ofEpochMilli(time), ZoneId.systemDefault()).format(formatter);
    }

    public static String formatSeconds(long time, String patten) {
        return ZonedDateTime.ofInstant(Instant.ofEpochSecond(time), ZoneId.systemDefault()).format(DateTimeFormatter.ofPattern(patten));
    }

    public static long getNowMilli() {
        return Timestamp.from(ZonedDateTime.now().toInstant()).getTime();
    }

    public static long toMilli(String date, DateTimeFormatter formatter) {
        return Timestamp.from(ZonedDateTime.of(LocalDateTime.parse(date, formatter), ZoneId.systemDefault()).toInstant()).getTime();
    }
    public static long toMilli(String date) {
        return Timestamp.from(ZonedDateTime.of(LocalDateTime.parse(date, yyyyMMdd_HH_mm_ss), ZoneId.systemDefault()).toInstant()).getTime();
    }

    public static String toDateString(Date date) {
        return formatMilli(date.getTime(), yyyy_MM_dd_HH_mm_ss);
    }

    public static String toDateString(Date date, DateTimeFormatter formatter) {
        return formatMilli(date.getTime(), formatter);
    }

    public static long diffDateMilli(String date1, String data2, DateTimeFormatter formatter) {
        return toMilli(date1, formatter) - toMilli(data2, formatter);
    }
    public static String getYyyyMMddHHmmss(long time){
        return formatMilli(time, "yyyyMMddHHmmss");
    }
    public static void main(String[] args) {
        System.out.println(getToday("yyyyMMdd"));
    }
}
