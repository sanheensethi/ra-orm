/*
  Warnings:

  - You are about to drop the column `createdAt` on the `contractor_form_answers` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `contractor_form_answers` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `contractor_schema` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `contractor_schema` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "public"."contractor_form_answers" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "public"."contractor_schema" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
