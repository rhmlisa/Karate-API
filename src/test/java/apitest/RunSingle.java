package apitest;
import com.intuit.karate.junit5.Karate;
public class RunSingle {
    @Karate.Test
    public Karate RunPost() {
        // getRequest is name feature files
        return Karate.run("postRequest").relativeTo(getClass());
    }

    @Karate.Test
    public Karate RunGet() {
        // getRequest is name feature files
        return Karate.run("getRequest").relativeTo(getClass());
    }

    @Karate.Test
    public Karate RunDelete() {
        // getRequest is name feature files
        return Karate.run("deleteRequest").relativeTo(getClass());
    }



}
