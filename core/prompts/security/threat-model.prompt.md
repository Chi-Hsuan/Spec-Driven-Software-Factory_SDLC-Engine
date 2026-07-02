# Threat Model — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/threat-model 讀取。 -->

## Thinking Strategy

1. 讀 data-model.md，問「哪些資料如果外洩會造成傷害」，列為 Asset（例如帳號、金流資訊）。
2. 讀 openapi.yaml，問「外部可以從哪裡進來」，列出每個對外暴露的 endpoint 作為 Entry Point。
3. 針對每個 Entry Point，套用常見攻擊分類（注入、跨站腳本、偽造請求、權限繞過等）問「這裡有沒有可能被這樣攻擊」。
4. 針對每個成立的威脅，初步思考「業界常見的緩解方式是什麼」，寫成方向性的 Mitigation（細節留給 security-checklist 展開）。

---

## Reasoning Rules

- **資產驅動**：先確定「什麼值得保護」，再回頭找「怎麼被攻擊」，避免漫無目的地列威脅清單。
- **每個 Entry Point 都要檢視**：不可跳過任何一個對外暴露的 API，即使看起來風險很低。
- **不下修正決策**：本階段只識別「可能有威脅」，不判斷「這個風險可以接受」，那是下游的職責。
- **具體威脅類型**：威脅描述要具體到攻擊手法（如 SQL Injection），而非籠統的「資料外洩風險」。

---

## Quality Checklist

- [ ] 是否每個 openapi.yaml 中的 Entry Point 都已被檢視？
- [ ] Asset 是否都能對應到 data-model.md 中實際存在的敏感欄位？
- [ ] 每個 Threat 是否都是具體的攻擊手法，而非籠統描述？
