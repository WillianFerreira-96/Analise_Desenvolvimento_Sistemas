//O Controller é a entrada da API, Direcionando para o Service.
//O Service valida e identica se as informações estão dentro das regras da API e envia esses dados para o Repository
//O Repository...
package com.descomplica.FrameBlog.controllers;

import com.descomplica.FrameBlog.models.User;
import com.descomplica.FrameBlog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/users")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/save")
    private @ResponseBody User save(@RequestBody User user){
        return userService.save(user);
    }

    @GetMapping(path = "/getAll")
    private @ResponseBody List<User> getAll(){
        return userService.getAll();
    }

    @GetMapping(path = "/get")
    private @ResponseBody User get(@RequestParam final long id){
        return userService.get(id);
    }

    @PostMapping(path="/update")
    private @ResponseBody User update(@RequestParam final long id, @RequestBody User user){
        return userService.update(id, user);
    }

    @DeleteMapping(path= "/delete")
    private ResponseEntity<?> delete(@RequestParam final long id){
        userService.delete(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping(path= "/")
    private @ResponseBody String authentication(){
        return "Hello World";
    }
}
