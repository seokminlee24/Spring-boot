package core.app8;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Getter
public class Component1 {

    @Autowired
    private Component2 component2;

//    @Autowired
//    private Component3 component3;
//
//    @Autowired
//    private Component4 component4;
}
