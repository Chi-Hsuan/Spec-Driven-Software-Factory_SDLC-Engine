# Generate E2E Test

## Capability

依 test-cases.md 撰寫自動化測試並執行，產出執行結果報告。測試標題以對應的 test_case_id 開頭，供結果報告回頭對照。

思考邏輯依循 `core/prompts/test/e2e-test.prompt.md`。

---

## Input

Required

- test-cases.md
- backend/frontend 原始碼

---

## Output

- 依 `core/templates/06-test/e2e/example.spec.template.ts` 撰寫 `specs/06-test/e2e/*.spec.ts`
- 依 `core/templates/06-test/test-report.template.md` 撰寫 `specs/06-test/test-report.md`
- 回填 test-cases.md 的 `automated` 欄位

---

## Validation

依 `core/schemas/06-test/e2e.schema.md`、`test-report.schema.md` 驗證，失敗時停止並回報：

- test-cases.md 為空或沒有任何 high priority 案例
- 測試環境無法啟動，無法執行任何測試
