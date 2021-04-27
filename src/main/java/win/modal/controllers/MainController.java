package win.modal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import win.modal.entities.User;
import win.modal.repositories.UserRepository;

@Controller
public class MainController {

  private final UserRepository userRepository;

  @Autowired
  public MainController(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  @GetMapping("/")
  public String main(final ModelMap modelMap, @RequestParam(defaultValue = "0") int page) {

    modelMap.addAttribute("data", userRepository.findAll(PageRequest.of(page, 4)));
    modelMap.addAttribute("currentPage", page);

    return "index";
  }

  @PostMapping("/save")
  public String save(final User user) {

    userRepository.save(user);

    return "redirect:/";
  }

  @GetMapping("/delete")
  public String delete(final Long id) {

    userRepository.deleteById(id);

    return "redirect:/";
  }

  @GetMapping("/findOne")
  @ResponseBody
  public User findOne(final Long id) {

    return userRepository.findById(id).get();
  }
}
