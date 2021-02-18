package com.muluo.service;

import com.muluo.pojo.Books;

import java.util.List;

/**
 * @author Muluo
 * @create 2021-02-18 18:47
 */
public interface BookService {

    // 增加
    int addBook(Books books);

    // 查询
    Books queryBookById(int id);

    // 删除
    int deleteBookById(int id);

    // 更新
    int updateBook(Books books);

    //查询全部
    List<Books> queryAllBook();

    List<Books> queryBook(String queryBookName);
}
