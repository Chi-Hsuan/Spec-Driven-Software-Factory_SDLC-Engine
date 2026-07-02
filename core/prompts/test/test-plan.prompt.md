# Test Plan — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-test-plan 讀取。 -->

## Thinking Strategy

1. 讀過 srs.md 的每個 FR-ID，問「這個功能如果壞了，影響有多大」，用來決定 Risk 優先權。
2. 針對整體系統，問「用什麼層級的測試才能真正驗證這個需求」，決定該用 unit、integration 還是 e2e。
3. 針對每個 FR-ID，問「使用者具體會怎麼操作、會期待看到什麼結果」，轉換成一筆 test case 的 preconditions/steps/expected result。
4. 確保每個高風險功能都至少有一筆 high priority 的 test case。

---

## Reasoning Rules

- **無需求即無測試**：不可為了「測試涵蓋率好看」而創造出沒有對應 FR-ID 的 test case。
- **層級對應原則**：純邏輯判斷適合 unit test；跨模組互動適合 integration test；使用者完整操作流程適合 e2e。
- **風險驅動優先權**：Risk 越高的功能，對應 test case 的 priority 也應該越高。
- **可執行性**：test case 的 steps 必須具體到「可以直接照做」，不能是抽象描述。

---

## Quality Checklist

- [ ] 每個 FR-ID 是否至少有一筆對應的 test case？
- [ ] 每筆 test case 是否都能說明驗證目的（對應到 FR-ID 或 API Contract）？
- [ ] Risk 區塊的高風險項目是否都對應到 high priority 的 test case？
