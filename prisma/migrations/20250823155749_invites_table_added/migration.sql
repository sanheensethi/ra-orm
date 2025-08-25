-- CreateEnum
CREATE TYPE "public"."InvitationType" AS ENUM ('PLATFORM', 'COMPANY_MEMBER', 'COMPANY_OWNER');

-- CreateTable
CREATE TABLE "public"."invites" (
    "id" SERIAL NOT NULL,
    "invite_code" TEXT NOT NULL,
    "invited_by" INTEGER NOT NULL,
    "company_id" INTEGER,
    "role_in_company" "public"."CompanyRole",
    "invitation_type" "public"."InvitationType" NOT NULL,
    "expire_time" TIMESTAMP(3) NOT NULL,
    "base_price_up" DOUBLE PRECISION NOT NULL DEFAULT 0.20,
    "is_used" BOOLEAN NOT NULL DEFAULT false,
    "accepted_at" TIMESTAMP(3),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "invites_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "invites_invite_code_key" ON "public"."invites"("invite_code");

-- AddForeignKey
ALTER TABLE "public"."invites" ADD CONSTRAINT "invites_invited_by_fkey" FOREIGN KEY ("invited_by") REFERENCES "public"."users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."invites" ADD CONSTRAINT "invites_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "public"."companies"("id") ON DELETE SET NULL ON UPDATE CASCADE;
