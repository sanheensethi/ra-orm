-- DropForeignKey
ALTER TABLE "public"."Assignment" DROP CONSTRAINT "Assignment_contractorId_fkey";

-- AlterTable
ALTER TABLE "public"."Assignment" ALTER COLUMN "contractorId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."Assignment" ADD CONSTRAINT "Assignment_contractorId_fkey" FOREIGN KEY ("contractorId") REFERENCES "public"."users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
