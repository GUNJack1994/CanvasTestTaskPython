# Login Page Locators
LoginUsernameInputBox = "xpath://input[@id='login_user']"
LoginPasswordInputBox = "xpath://input[@id='login_pass']"
LoginButton = "xpath://button[@id='login_button']"


# Home Page Locators
def Get_Tab_Name(tabName):
    return f"//div[contains(@class, 'menu-tab-label') and contains(text(), '{tabName}')]"

# Sales & Marketing Page Locators
CreateContactButton = "xpath://span[text()='Create Contact']"
FirstNameInputBox = "id:DetailFormfirst_name-input"
LastNameInputBox = "id:DetailFormlast_name-input"
CategoryDropdown = "id:DetailFormcategories-input"
BusinessRole = "id:DetailFormbusiness_role-input"
