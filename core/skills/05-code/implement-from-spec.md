# Implement From Spec

## Capability

依據既有規格（Backend：system-design.md / openapi.yaml / schema.sql / security-requirements.md；Frontend：screen-spec.md / component-spec.md / design-tokens.json / openapi.yaml）將 `task-list.yaml` 中的單一 task 轉譯為可執行的原始碼。只做「規格 → 程式碼」的忠實轉譯，不進行未經規格定義的設計決策。

思考邏輯依循 `core/prompts/code/implementation.prompt.md`。

---

## Input

Required

- 單一 task（來自 task-list.yaml，含 module_ref / adr_ref）
- 對應規格（依 task 的 `type` 決定：backend 或 frontend 規格集合）

---

## Output

原始碼（依 task 的 `type` 寫入對應目錄）+ implementation-notes.md 或元件實作筆記的對應段落更新。無獨立 Template（原始碼本身即依上游規格的形狀實作，不套用填空式文件模板）。

---

## Validation

無獨立 Schema；驗證方式為程式碼行為與對應規格（API 合約 / UI 規格 / 資料 schema）逐項比對，並由下游 Test Agent 的測試結果佐證。停止並回報的情況：

- 對應規格區塊缺失或與 task 描述矛盾
- 規格對某個邊界情況沒有定義，且無法合理推斷
