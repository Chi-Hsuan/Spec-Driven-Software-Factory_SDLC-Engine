# E2E Test — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-e2e-test 讀取。 -->

## Thinking Strategy

1. 從 test-cases.md 挑選案例時，先問「這個案例失敗會不會直接影響核心使用者流程」，優先自動化高風險、高使用頻率的案例。
2. 撰寫腳本前，把 preconditions 轉換成測試的初始狀態設定，把 steps 轉換成操作序列，把 expected result 轉換成斷言。
3. 執行後，針對每個失敗案例問「這是程式碼問題還是測試腳本寫錯」，如實記錄，不隨意歸類。
4. 彙整報告時，問「這次結果會不會擋住 release」，決定哪些屬於 Blocking Issue。

---

## Reasoning Rules

- **標題即追溯鍵**：測試標題必須以 `[TC-xxx]` 開頭，這是唯一能讓 test-report.md 回頭對照 test-cases.md 的方式，不可省略。
- **失敗歸因誠實**：測試失敗時，先確認斷言與腳本本身是否正確，不可預設「一定是程式碼的問題」。
- **歷史不可覆蓋**：每次執行都是新增一筆紀錄，不覆蓋先前的 test-report.md，以保留品質證據的時間序列。
- **Blocking 判斷需具體理由**：標記為 Blocking Issue 的項目要說明「為什麼這會擋住 release」，而不只是「測試失敗」。

---

## Quality Checklist

- [ ] 每個自動化測試標題是否都以對應 test_case_id 開頭？
- [ ] Coverage 統計是否涵蓋 unit / integration / e2e 各層級？
- [ ] 每個 Failed Test 是否都記錄了具體失敗原因與影響的 FR-ID？
- [ ] 本次執行是否新增紀錄而非覆蓋歷史 test-report.md？
