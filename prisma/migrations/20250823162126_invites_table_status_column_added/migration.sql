/*
  Warnings:

  - You are about to drop the column `is_used` on the `invites` table. All the data in the column will be lost.

*/
-- CreateEnum
CREATE TYPE "public"."InviteStatus" AS ENUM ('PENDING', 'ACCEPTED', 'EXPIRED', 'CANCELLED');

-- AlterTable
ALTER TABLE "public"."invites" DROP COLUMN "is_used",
ADD COLUMN     "status" "public"."InviteStatus" NOT NULL DEFAULT 'PENDING';
