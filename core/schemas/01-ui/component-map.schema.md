# Component Map Schema

---

# 1. 必要結構

## 1.1 Page 必須存在

---

## 1.2 Component 必須具備

每個 component 必須包含：

- Component Name
- Type（button / input / layout / modal）
- Props（可以為空，但要存在）
- State（可以為空，但要存在）
- Events（如果有互動）
- Dependencies（API / other components）

---

## 1.3 Component Tree

必須有：

- Parent → Child 關係

---

# 2. 驗證規則

❌ 無 component type → invalid  
❌ 無 hierarchy → warning  