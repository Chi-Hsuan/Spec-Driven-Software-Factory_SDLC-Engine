<!--
error-codes.md = 系統有哪些「業務錯誤」以及如何處理，是 openapi.yaml 裡 Error schema 的實際列舉值。
不要放：
- HTTP 傳輸層級的通用錯誤格式 → api-design.md 的 Common Response Envelope
- 個別 endpoint 回傳哪些 HTTP status → openapi.yaml
- 錯誤發生時的呼叫流程 → sequence-diagrams.md
-->

# 1. Error Code Convention

- 格式：`{DOMAIN}_{REASON}`（例如 `USER_NOT_FOUND`）
- http_status 僅供對照參考，實際定義仍以 openapi.yaml 各 endpoint 為準

---

# 2. Error Codes

| error_code | http_status | message | 觸發情境 | client 處理建議 |
|---|---|---|---|---|
| `VALIDATION_FAILED` | 400 |  | 請求欄位不符合規則 | 依 `details` 欄位提示使用者修正 |
| `UNAUTHORIZED` | 401 |  | 未提供或 token 失效 | 導向重新登入 |
| `FORBIDDEN` | 403 |  | 無權限存取此資源 | 顯示無權限提示，不可重試 |
| `NOT_FOUND` | 404 |  | 資源不存在 | 顯示找不到，不可重試 |
| `CONFLICT` | 409 |  | 資源狀態衝突（如重複建立） | 提示使用者確認現況 |
| `INTERNAL_ERROR` | 500 |  | 未預期的系統錯誤 | 提示稍後再試，可重試 |

<!-- 依業務領域擴充：新增列時 error_code 必須全域唯一，禁止重複用於不同情境 -->

---

# 3. Retry Policy

| error_code | 可重試 |
|---|---|
| `INTERNAL_ERROR` | 是 |
| `VALIDATION_FAILED` | 否 |
