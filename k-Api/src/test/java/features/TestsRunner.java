package features;

import com.intuit.karate.junit5.Karate;

class TestsRunner {
    
    @Karate.Test
    Karate testRunner() {
        return Karate.run("crud-test").relativeTo(getClass());
    }

}
