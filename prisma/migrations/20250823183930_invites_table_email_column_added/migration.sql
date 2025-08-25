/*
  Warnings:

  - Added the required column `email` to the `invites` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."invites" ADD COLUMN     "email" TEXT NOT NULL;
