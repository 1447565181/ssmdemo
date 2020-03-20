package cn.ybzy.mapper;

import cn.ybzy.model.User;

import java.util.List;


public interface UserMapper {
    public List<User> getAllUser();

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);


}