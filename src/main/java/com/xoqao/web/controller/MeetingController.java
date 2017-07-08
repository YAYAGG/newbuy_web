package com.xoqao.web.controller;


import com.xoqao.web.bean.User;
import com.xoqao.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Author: lovegod
 * Created by 123 on 2017/2/17.
 */
@Controller
@RequestMapping("/meet")
public class MeetingController {

    @Autowired
    UserService userService;



    /**
     * 查看有所有的用户
     *
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/getAllUser")
    public String getAllUser(Model model) throws Exception {
        List<User> userList = userService.findUserList();
        model.addAttribute("userList", userList);
        //guanxinyancesgu
        return "test/userList";
    }



    //时间类型转换
    private Date changeDataFormat(String date1) throws Exception {
        DateFormat formatFrom = new SimpleDateFormat("MM/dd/yyyy KK:mm aa", Locale.ENGLISH);
        Date d1 = formatFrom.parse(date1);
        DateFormat formatTo = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(formatTo.format(d1));
        Date d2 = formatTo.parse(formatTo.format(d1));
        return d2;
    }

    //时间比较类，和当前时间进行比较
    private boolean CompareTime(String dateTime) throws Exception {
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String nowTime = sdf.format(d);
        if (nowTime.compareTo(dateTime) < 0) {
            System.out.println(nowTime + dateTime);
            return true;
        }
        return false;
    }

}
