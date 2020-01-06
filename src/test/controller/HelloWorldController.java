package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author liyong
 * @date 2019/12/23 14:37
 */

@Controller
@RequestMapping("/mvc")
//@ResponseBody
//@RequestMapping(value = "/getSearchMsg")
public class HelloWorldController {
//    public String[] getSearchMsg(String input) {
//        return userServiceImpl.getSearchMsgByInput(input);
//    }


    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }
}
