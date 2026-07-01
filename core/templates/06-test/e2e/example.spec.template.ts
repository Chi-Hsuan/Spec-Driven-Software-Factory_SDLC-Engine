// e2e/ = 自動化測試程式碼（實作層），一個檔案通常對應一個 screen_id 或一組相關 flow。
// 不要放：
//   - test case 的定義文字（preconditions/expected result 等） → test-cases.md（這裡只實作，不重新描述）
//   - 執行結果 → test-report.md
// 規則：
//   - 每個 test() 標題必須以對應的 test_case_id 開頭，例如 "[TC-001] ..."，
//     這樣 test-report.md 才能用 test_case_id 對照回 test-cases.md
//   - 範例採 Playwright 語法，實際框架請依 pcp/tech-stack.md 調整

import { test, expect } from "@playwright/test";

test("[TC-001] 登入成功後導向 Dashboard", async ({ page }) => {
  // Arrange（對應 test-cases.md 的 preconditions）
  await page.goto("/login");

  // Act（對應 test-cases.md 的 steps）
  await page.getByLabel("email").fill("user@example.com");
  await page.getByLabel("password").fill("");
  await page.getByRole("button", { name: "登入" }).click();

  // Assert（對應 test-cases.md 的 expected result）
  await expect(page).toHaveURL(/\/dashboard/);
});
