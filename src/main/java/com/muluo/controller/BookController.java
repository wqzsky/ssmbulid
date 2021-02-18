package com.muluo.controller;

import com.muluo.pojo.Books;
import com.muluo.service.BookService;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Muluo
 * @create 2021-02-18 20:07
 */
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String queryAllBook(Model model) {

        List<Books> books = bookService.queryAllBook();
        model.addAttribute("books", books);

        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddBook() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books) {
        bookService.addBook(books);
        return "redirect:/book/allBook"; // 重定向可以阻止表单的二次提交
    }

    @RequestMapping("/updateBook")
    public String updateBook(int id, Model model) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("books", books);
        return "updateBook";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Books book) {
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {

        List<Books> books = bookService.queryBook(queryBookName);
//        List<Books> books = new ArrayList<Books>();
////        lb.add((Books) lb);

        model.addAttribute("books",books);
        return "allBook";
    }
}
