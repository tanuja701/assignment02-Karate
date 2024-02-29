package Parallel;

import com.intuit.karate.Results;
import org.junit.Test;

public class Runner {
@Test
    void TestParallel() {
    Results result=com.intuit.karate.Runner.path("classpath:Features").parallel(5);


    }
}
