# Task Breakdown — Thinking Prompt

<!-- 只負責思考，不決定輸出格式。只能被 skill/generate-task-breakdown 讀取。 -->

## Thinking Strategy

1. 針對每個 Module，問「一個實作者不需要回頭查設計文件，只看這個 task 就能動手做嗎」，若不行，代表 task 切得不夠具體。
2. 把 Module 的內部設計、API Flow、Data Flow Detail 各自拆成獨立可執行的動作，而不是整個 Module 當成一個大 task。
3. 針對每個 task，問「它需要先完成哪些其他 task」，標出 depends_on，避免遺漏前置依賴。
4. 針對每個 task，問「怎麼知道它做完了」，寫成 acceptance_criteria。

---

## Reasoning Rules

- **可執行原則**：task 的 description 必須是具體行動（例如「建立 /users POST endpoint」），不是抽象目標（例如「處理使用者相關邏輯」）。
- **不重複設計理由**：task 只透過 `module_ref` / `adr_ref` 引用設計與決策，不在 description 中重新解釋為什麼。
- **依賴需可終止**：depends_on 形成的圖不可有循環，若發現循環代表某個 task 切分方式有誤。
- **顆粒度一致**：同一批 task 的大小應該相近，避免一個 task 做一整個模組、另一個 task 只做一行程式碼。

---

## Quality Checklist

- [ ] 每個 task 是否都能被直接執行，不需回頭查設計文件？
- [ ] depends_on 是否會形成循環？
- [ ] 每個 task 是否都有 acceptance_criteria？
- [ ] description 是否只描述「做什麼」，沒有夾帶「為什麼」？
