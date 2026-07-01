# User Flow Schema

---

# 1. 目的
定義 user-flow.md 必須包含的結構

---

# 2. 必要結構

## 2.1 Flow 必須存在
- 至少 1 個 Flow

---

## 2.2 每個 Flow 必須包含

- Flow 名稱
- 步驟（Start → End）
- 成功路徑（Happy Path）
- 失敗路徑（Error Path）
- 分支條件（如果有）

---

## 2.3 步驟格式

每個 step 必須是：

- 使用者行為 OR 系統行為
- 有順序

---

# 3. 驗證規則

❌ 無 Flow → invalid  
❌ 無 step → invalid  
❌ 無 success path → warning  