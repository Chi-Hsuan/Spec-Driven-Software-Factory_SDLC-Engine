# Traceability Matrix Schema

## Machine Validation

- 每個 `srs.md` 中存在的 FR-ID 都必須在表格中有一列，不可省略
- `Result` 欄位只能是 PASS / FAIL / NOT_TESTED
- 所有欄位引用的 id（screen_id / module_id / operationId / entity_id / test_case_id）必須是各自來源文件中真實存在的值，或明確留空
- Coverage Summary 的缺口數必須與逐列標記的空格數一致

INVALID 條件（任一成立即拒絕交付）：

- ❌ 存在 srs.md 的 FR-ID 未被列出
- ❌ `Result` 使用未定義的值
- ❌ 引用了不存在於來源文件的 id
- ❌ Coverage Summary 與實際缺口數不一致
