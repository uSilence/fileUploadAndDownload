package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author liyong
 * @date 2019/12/23 14:37
 */

@Controller
@RequestMapping("/mvc")
public class HelloWorldController {

    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }
}
