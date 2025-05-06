//O Controller é a entrada da API, Direcionando para o Service.
//O Service valida e identica se as informações estão dentro das regras da API e envia esses dados para o Repository
//O Repository...
package com.descomplica.FrameBlog.controllers.v2;

import com.descomplica.FrameBlog.models.UserV2;
import com.descomplica.FrameBlog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/v2/users")
public class UserControllerV2 {

    @Autowired
    private UserService userService;

    @PostMapping("/save")
    private @ResponseBody UserV2 save(@RequestBody UserV2 userV2){
        return userService.save(userV2);
    }

    @GetMapping(path = "/getAll")
    private @ResponseBody List<UserV2> getAll(){
        return userService.getAll();
    }

    @GetMapping(path = "/get")
    private @ResponseBody UserV2 get(@RequestParam final long id){
        return userService.get(id);
    }

    @PostMapping(path="/update")
    private @ResponseBody UserV2 update(@RequestParam final long id, @RequestBody UserV2 userV2){
        return userService.update(id, userV2);
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
