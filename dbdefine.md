## 🔹 Difference between `BaseRole` and `CompanyRole`

### **1. BaseRole (Platform-level role)**
- Tells **what kind of user this is on the platform overall** (independent of company).  
- It’s like a **global identity**.

Example:
- `SUPER_ADMIN` → Full access to the entire platform (manages onboarding, billing, etc.).
- `COMPANY` → A user who owns or belongs to one or more companies (default).
- `WORKER` / `CONTRACTOR` → Platform-wide categorization (even if not yet tied to a specific company). Useful for analytics, pricing, or access tiers.

👉 Think of **BaseRole as “what type of person is this in the whole system?”**

---

### **2. CompanyRole (Company-level role)**
- Tells **what this user does inside a specific company**.  
- Stored in `CompanyMember`.

Example:
- `ADMIN` → Can invite/manage other members in this company.
- `MANAGER` → Manages teams/projects in the company.
- `WORKER` → Standard employee role.
- `CONTRACTOR` → External collaborator.

👉 Think of **CompanyRole as “what hat they wear inside *this particular company***.  

⚡ A single `User` can have **different `CompanyRole`s in different companies**.  
E.g., Same person could be:
- `ADMIN` in Company A
- `WORKER` in Company B

---

### **3. InvitationType (What the invitation is for)**
This defines the **purpose** of an invite:
- `PLATFORM` → Just to onboard a user to the platform (no company yet).
- `COMPANY_MEMBER` → Add a user to an existing company (with `roleInCompany`).
- `COMPANY_OWNER` → Onboard a new company with the invited user as the first owner/admin.

---

## 🔹 Example User Journeys

### **Case 1: Super Admin onboarding a new company**
- Invite → `InvitationType = COMPANY_OWNER`
- User accepts → `BaseRole = COMPANY`, `CompanyRole = ADMIN` (in the new company).

---

### **Case 2: Company Admin inviting a Worker**
- Invite → `InvitationType = COMPANY_MEMBER`
- User accepts → `BaseRole = WORKER`, `CompanyRole = WORKER`.

---

### **Case 3: Freelancer just joins platform**
- Invite → `InvitationType = PLATFORM`
- User accepts → `BaseRole = CONTRACTOR`
- No company membership yet. Later can join companies.

---

✅ So in short:
- **BaseRole = global identity (system-wide type of user).**
- **CompanyRole = local identity (what they do inside a company).**
- **InvitationType = intent of the invitation.**






Platform invites → onboard user only.

Company member invites → onboard into an existing company.

Company owner invites → onboard a brand-new company + owner.