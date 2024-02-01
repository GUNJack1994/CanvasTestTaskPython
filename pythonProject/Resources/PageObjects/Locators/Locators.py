# Login Page Locators
LoginUsernameInputBox = "xpath://input[@id='login_user']"
LoginPasswordInputBox = "xpath://input[@id='login_pass']"
LoginButton = "xpath://button[@id='login_button']"


# Home Page Locators
def Get_Tab_Name(tabName):
    return f"//div[contains(@class, 'menu-tab-label') and contains(text(), '{tabName}')]"

# Sales & Marketing Page Locators
CreateContactButton = "xpath://span[text()='Create Contact']//..//../a"
FirstNameInputBox = "id:DetailFormfirst_name-input"
LastNameInputBox = "id:DetailFormlast_name-input"
CategoryDropdown = "id:DetailFormcategories-input"
BusinessRoleDropdown = "id:DetailFormbusiness_role-input"
BusinessRole = "xpath://p[text()='Business Role']/parent::div/div"
SaveButton = "id:DetailForm_save"
ContactTable = "id:_form_header"

def Get_Element_From_Category(categoryName):
    return f"//div[@id='DetailFormcategories-input-search-list']/div/div/div[text()='{categoryName}']"