from playwright.sync_api import sync_playwright

def test_login():
    with sync_playwright() as p:
        browser = p.chromium.launch(headless=False)
        context = browser.new_context()
        page = context.new_page()
        
        # Navegue até a página de login
        page.goto("https://example.com")

        # Preencha o login e senha
        page.fill("input#username", "myuser")
        page.fill("input#password", "mypassword")
        page.click("button#login")

        # Verifique se o dashboard está visível
        assert page.is_visible("#dashboard")

        browser.close()
