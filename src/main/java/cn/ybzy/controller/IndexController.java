package cn.ybzy.controller;


import cn.ybzy.model.User;
import cn.ybzy.service.DaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

@Controller
public class IndexController {


    @Autowired()
    public DaoService daoService;

    /**
     * 查询使用的用户
     * @param model
     * @return
     */
    @RequestMapping(value = {"/users","/"})
    public String index(Model model) {
        List<User> users = daoService.getAllUser();
        model.addAttribute("users",users);
        return "login";
    }

    /**
     * 根据id删除对应用户
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable("id") Integer id ){
        System.out.println("进来了"+id);
        if (id!=null){
            daoService.deleteByPrimaryKey(id);
        }
        return "redirect:/users";
    }

    /**
     * 调转到allter,jsp界面添加用户
     * @return
     */
    @RequestMapping(value = "/allter")
    public String allter(){
        return "allter";
    }

    /**
     * 接受allter.jsp界面传递来的数据保存到数据库
     * @param user
     * @return
     */
    @RequestMapping(value = "/allterss")
    public String allterss(User user){
        user.setAddDate(new Date());
        daoService.insertSelective(user);
        System.out.println(user.toString());
        return "redirect:/users";
    }

    @RequestMapping(value = "/update/{id}")
    public String update(Model model,@PathVariable("id") Integer id){
        User user = daoService.selectByPrimaryKey(id);
        model.addAttribute("user",user);
        return "update";
    }

    @RequestMapping(value = "/updatess")
    public String updatess(User user){
        System.out.println(user.toString());
        daoService.updateByPrimaryKey(user);
        return "redirect:/users";
    }


}
