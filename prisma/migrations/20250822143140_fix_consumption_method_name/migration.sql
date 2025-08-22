/*
  Warnings:

  - Changed the type of `consuptionMethod` on the `Order` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "ConsumptionMethod" AS ENUM ('TAKE_AWAY', 'DINE_IN');

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "consuptionMethod",
ADD COLUMN     "consuptionMethod" "ConsumptionMethod" NOT NULL;

-- DropEnum
DROP TYPE "ConsuptionMethod";
