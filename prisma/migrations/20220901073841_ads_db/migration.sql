-- CreateTable
CREATE TABLE "ads" (
    "id" BIGSERIAL NOT NULL,
    "idSource" BIGINT,
    "idSource2" VARCHAR(40),
    "url" VARCHAR(250),
    "phoneProtected" BOOLEAN,
    "personTypeId" INTEGER,
    "sourceId" INTEGER,
    "countSamePhone" INTEGER,
    "phoneOperator" VARCHAR(50),
    "phoneRegion" VARCHAR(70),
    "lat" DECIMAL(15,12),
    "lng" DECIMAL(15,12),
    "address" VARCHAR(250),
    "city" VARCHAR(250),
    "adsDate" TIMESTAMP(3) NOT NULL,
    "price" DECIMAL(18,2),
    "person" VARCHAR(250),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "title" TEXT,
    "description" TEXT,
    "phone" VARCHAR(20),
    "typeId" INTEGER NOT NULL,
    "data" JSONB,
    "links" JSONB,
    "categoryId" INTEGER,
    "regionId" INTEGER,

    CONSTRAINT "ads_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "type" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "code" VARCHAR(100),
    "name" VARCHAR(255),

    CONSTRAINT "type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "category" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3),
    "code" VARCHAR(100),
    "name" VARCHAR(255),
    "avitoId" INTEGER,
    "parentId" INTEGER,

    CONSTRAINT "category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "region" (
    "id" SERIAL NOT NULL,
    "code" VARCHAR(50) NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "active" BOOLEAN DEFAULT false,
    "kladrcode" SMALLINT,

    CONSTRAINT "region_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "carbody" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(15) NOT NULL,
    "code" VARCHAR(15) NOT NULL,
    "avitocode" VARCHAR(15) NOT NULL,

    CONSTRAINT "carbody_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "carmanufacturer" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(20) NOT NULL,
    "code" VARCHAR(30) NOT NULL,
    "avitocode" VARCHAR(30) NOT NULL,

    CONSTRAINT "carmanufacturer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "carmodel" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "code" VARCHAR(70) NOT NULL,
    "enginecapacity" DECIMAL(6,1),
    "enginepower" INTEGER,
    "avitocode" VARCHAR(70),
    "carmanufacturerid" INTEGER NOT NULL,
    "carbodyid" INTEGER,
    "cartransmissionid" INTEGER,

    CONSTRAINT "carmodel_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "carmodelbody" (
    "id" SERIAL NOT NULL,
    "carmodelid" INTEGER NOT NULL,
    "carbodyid" INTEGER NOT NULL,

    CONSTRAINT "carmodelbody_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "carmodeltransmission" (
    "id" SERIAL NOT NULL,
    "carmodelid" INTEGER NOT NULL,
    "cartransmissionid" INTEGER NOT NULL,

    CONSTRAINT "carmodeltransmission_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cartransmission" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(10) NOT NULL,
    "code" VARCHAR(10) NOT NULL,
    "avitocode" VARCHAR(10) NOT NULL,

    CONSTRAINT "cartransmission_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "lastload" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "name" TEXT NOT NULL,
    "lastloaddate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "lastload_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ads_idSource_key" ON "ads"("idSource");

-- CreateIndex
CREATE INDEX "ads_sourceId_idSource2_idx" ON "ads"("sourceId", "idSource2");

-- CreateIndex
CREATE INDEX "ads_phone_idx" ON "ads"("phone");

-- CreateIndex
CREATE INDEX "ads_createdAt_idx" ON "ads"("createdAt");

-- CreateIndex
CREATE INDEX "ads_updatedAt_idx" ON "ads"("updatedAt");

-- CreateIndex
CREATE INDEX "ads_adsDate_idx" ON "ads"("adsDate");

-- CreateIndex
CREATE UNIQUE INDEX "category_parentId_code_name_key" ON "category"("parentId", "code", "name");

-- CreateIndex
CREATE UNIQUE INDEX "lastload_name_key" ON "lastload"("name");

-- AddForeignKey
ALTER TABLE "ads" ADD CONSTRAINT "ads_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "type"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ads" ADD CONSTRAINT "ads_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ads" ADD CONSTRAINT "ads_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "region"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "category" ADD CONSTRAINT "category_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "carmodel" ADD CONSTRAINT "carmodel_carmanufacturerid_fkey" FOREIGN KEY ("carmanufacturerid") REFERENCES "carmanufacturer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "carmodelbody" ADD CONSTRAINT "carmodelbody_carbodyid_fkey" FOREIGN KEY ("carbodyid") REFERENCES "carbody"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "carmodelbody" ADD CONSTRAINT "carmodelbody_carmodelid_fkey" FOREIGN KEY ("carmodelid") REFERENCES "carmodel"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "carmodeltransmission" ADD CONSTRAINT "carmodeltransmission_carmodelid_fkey" FOREIGN KEY ("carmodelid") REFERENCES "carmodel"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "carmodeltransmission" ADD CONSTRAINT "carmodeltransmission_cartransmissionid_fkey" FOREIGN KEY ("cartransmissionid") REFERENCES "cartransmission"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
