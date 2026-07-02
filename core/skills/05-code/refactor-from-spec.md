# Refactor From Spec

## Capability

當上游規格變更時，調整既有原始碼使其重新符合規格，且不引入規格未要求的新行為。只調整規格差異涉及的範圍，不順便重構無關程式碼。

思考邏輯依循 `core/prompts/code/refactor.prompt.md`。

---

## Input

Required

- 變更後的規格（新版 openapi.yaml / schema.sql / screen-spec.md / component-spec.md 等）
- 既有原始碼

Optional

- 對應 adr（若變更源自新的架構決策）
- migration-plan.md（若涉及資料庫 schema）

---

## Output

更新後的原始碼 + implementation-notes.md 或元件實作筆記中的變更紀錄。無獨立 Template。

---

## Validation

無獨立 Schema；驗證方式為新舊規格差異與程式碼變更範圍逐項比對。停止並回報的情況：

- 新舊規格差異不明確，無法判斷需要調整的具體範圍
- 規格變更涉及資料刪除但 migration-plan.md 未提供 rollback 策略
