# Sequence Diagrams Schema

## Machine Validation

- 至少 1 個 `# Flow: {flow_id}` 區塊，且 Meta 中的「對應 operationId」必須存在於 `openapi.yaml`
- 每個 Flow 必須包含 Mermaid `sequenceDiagram` 與 Steps 表格
- Steps 表格每列必須包含：步驟、發起方、接收方、說明；「可能失敗」欄位若填寫，值必須是 `error-codes.md` 中存在的 error_code

INVALID 條件（任一成立即拒絕交付）：

- ❌ Flow 對應的 operationId 不存在於 openapi.yaml
- ❌ Steps 表格引用了不存在的 error_code
- ❌ Flow 只涉及單一 module（不應存在，應合併進 system-design.md 的 API Flow）
