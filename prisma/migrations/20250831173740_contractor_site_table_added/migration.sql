-- CreateTable
CREATE TABLE "public"."ContractorSite" (
    "id" SERIAL NOT NULL,
    "contractorId" INTEGER NOT NULL,
    "companyId" INTEGER NOT NULL,
    "siteId" INTEGER NOT NULL,
    "assignedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ContractorSite_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "public"."ContractorSite" ADD CONSTRAINT "ContractorSite_contractorId_fkey" FOREIGN KEY ("contractorId") REFERENCES "public"."users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ContractorSite" ADD CONSTRAINT "ContractorSite_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES "public"."companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ContractorSite" ADD CONSTRAINT "ContractorSite_siteId_fkey" FOREIGN KEY ("siteId") REFERENCES "public"."sites"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
