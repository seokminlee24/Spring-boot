package core.app7;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Getter
@Component
public class Bean1 {
    // 필드 주입은 추천 하지 않음
    @Autowired
    Bean2 bean2;
}
