package core.app5.controlloer;

import core.app5.service.Service1;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Getter
public class Controller1 {
    // dependency
    Service1 service1;

    // dependency injection (DI)
    @Autowired
    public void setService1(Service1 service1) {
        this.service1 = service1;
    }

    public void sub1() {
        service1.crud();
    }
}
