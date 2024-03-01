// TODO perbedaan di type module & non-module
const { Given, When, Then } = require('@wdio/cucumber-framework');

const LoginPage = require('../pageobjects/login.page.js');
const HomePage = require('../pageobjects/home.page.js');

Given(/^Louis is on the login page$/, async () => {
    await LoginPage.open()
})

When(/^Louis login with "(.*)" credential$/, async (username) => {
    await LoginPage.login(username)
})

Then(/^Louis should see home page$/, async() => {
    await HomePage.validateHomePage()
})

Then(/^Louis should see error "(.*)"$/, async (dynamicMessage) => {
    await LoginPage.validateLockedOutUserError(dynamicMessage)
})
