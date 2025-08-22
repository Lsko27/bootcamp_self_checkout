/*
  Warnings:

  - You are about to drop the column `customerCpf` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `customerName` on the `Order` table. All the data in the column will be lost.
  - Added the required column `costumerCpf` to the `Order` table without a default value. This is not possible if the table is not empty.
  - Added the required column `costumerName` to the `Order` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Order" DROP COLUMN "customerCpf",
DROP COLUMN "customerName",
ADD COLUMN     "costumerCpf" TEXT NOT NULL,
ADD COLUMN     "costumerName" TEXT NOT NULL;
