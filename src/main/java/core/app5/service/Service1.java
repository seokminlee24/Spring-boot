package core.app5.service;

import lombok.Getter;
import org.springframework.stereotype.Component;

@Component
@Getter
public class Service1 {

    public void crud() {
        System.out.println("매우 긴 crud 코드");
    }
}
