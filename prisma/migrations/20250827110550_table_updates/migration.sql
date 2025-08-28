-- AlterTable
ALTER TABLE "public"."invites" ALTER COLUMN "base_price_up" DROP NOT NULL,
ALTER COLUMN "base_price_up" SET DEFAULT 0.00;
