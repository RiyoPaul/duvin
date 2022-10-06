package com.runnernew;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(monochrome=true,plugin={"pretty","json:target/Output.json"},name = {"Verifying adactin login"},features="src\\test\\resources\\options\\Login.feature", glue = "com.stepdefinitionnew" )


public class TestRunnerClassNew {

	

	


}
