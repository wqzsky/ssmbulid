package com.muluo.service;

import com.muluo.dao.BookMapper;
import com.muluo.pojo.Books;

import java.util.List;

/**
 * @author Muluo
 * @create 2021-02-18 18:51
 */
public class BookServiceImpl implements BookService{

    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public List<Books> queryBook(String queryBookName) {
        return bookMapper.queryBook(queryBookName);
    }
}
