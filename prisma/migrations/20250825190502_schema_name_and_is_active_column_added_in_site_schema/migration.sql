/*
  Warnings:

  - Added the required column `schema_name` to the `site_schema` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."site_schema" ADD COLUMN     "is_active" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "schema_name" TEXT NOT NULL;
