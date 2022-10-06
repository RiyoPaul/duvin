package com.stepdefinition;

import java.time.Duration;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class StepDefinitionClass {
	
	WebDriver driver;

	@Given("User is on adactin page")
	public void user_is_on_adactin_page() {
		
		WebDriverManager.chromedriver().setup();
		driver = new ChromeDriver();
		driver.get("https://adactinhotelapp.com/");
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
		
		
	}
	@When("User should enter {string},{string}")
	public void user_should_enter(String name, String pass) {
	
		
        driver.findElement(By.id("username")).sendKeys(name);
		
		driver.findElement(By.id("password")).sendKeys(pass);
		
	}
	@When("User should click login button")
	public void b() {
		
		driver.findElement(By.name("login")).click();
	}
		@When("User should search hotels {string},{string},{string},{string},{string},{string},{string},{string}")
		public void d(String location, String hotels, String roomtype, String noOfRooms, String checkinDate, String checkOutDate, String adultsperroom, String childsPerRoom) {
			
			driver.findElement(By.id("location")).sendKeys(location);
			driver.findElement(By.id("hotels")).sendKeys(hotels);
			driver.findElement(By.id("room_type")).sendKeys(roomtype);
			driver.findElement(By.id("room_nos")).sendKeys(noOfRooms);
			driver.findElement(By.id("datepick_in")).sendKeys(checkinDate);
			driver.findElement(By.id("datepick_out")).sendKeys(checkOutDate);
			driver.findElement(By.id("adult_room")).sendKeys(adultsperroom);
			driver.findElement(By.id("child_room")).sendKeys(childsPerRoom);
			
					
		}

		@When("User should click search button")
		public void e() {
			
			driver.findElement(By.id("Submit")).click();
		}
		
		@When("User should select hotel and click continue")
		public void f() {
			
			driver.findElement(By.id("radiobutton_0")).click();
			driver.findElement(By.id("continue")).click();
		}
		
		@When("User should bookhotel {string},{string},{string},{string},{string},{string},{string},{string}")
		public void user_should_bookhotel(String firstName, String lastName, String address, String cardNo, String cardType, String expiryM, String expiryY, String cvv) {
			
			driver.findElement(By.id("first_name")).sendKeys(firstName);
			driver.findElement(By.id("last_name")).sendKeys(lastName);
			driver.findElement(By.id("address")).sendKeys(address);
			driver.findElement(By.id("cc_num")).sendKeys(cardNo);
			driver.findElement(By.id("cc_type")).sendKeys(cardType);
			driver.findElement(By.id("cc_exp_month")).sendKeys(expiryM);
			driver.findElement(By.id("cc_exp_year")).sendKeys(expiryY);
			driver.findElement(By.id("cc_cvv")).sendKeys(cvv);
			driver.findElement(By.id("book_now")).click();
		}

	
		@Then("User should print the orderId")
		public void j() {
			
			WebElement orderId = driver.findElement(By.id("order_no"));
			String id = orderId.getAttribute("value");
			System.out.println(id);
		}

	
	
	
	
	
	
	
	
	




	
	
	
	
	
	
	
	
	


}
