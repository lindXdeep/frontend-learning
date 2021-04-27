package win.modal.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import win.modal.repositories.UserRepository;

@RequiredArgsConstructor

@Controller
public class MainController {
  
  private UserRepository userRepository;

  @GetMapping("/")
  public String main(final ModelMap modelMap){
        
    return "index";
  }
}
