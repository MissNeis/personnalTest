package com.tutorials.karate.runner;

import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@CucumberOptions(dryRun = true,
features={"../features/loginTest.feature"})

//@CucumberOptions(tags = {"@login"})
@RunWith(Karate.class)
public class TestRunner
{
//
//    @Test
//    public void testParallel()
//    {
//        String karateOutputPath = "target/surefire-reports";
//        KarateStats stats = CucumberRunner.parallel(getClass(), 5, karateOutputPath);
//        generateReport(karateOutputPath);
//        assertTrue("there are scenario failures", stats.getFailCount() == 0);
//    }
//
//    public static void generateReport(String karateOutputPath)
//    {
//        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
//        List<String> jsonPaths = new ArrayList(jsonFiles.size());
//        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
//        Configuration config = new Configuration(new File("target"), "demo");
//        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//        reportBuilder.generateReports();
//    }
}