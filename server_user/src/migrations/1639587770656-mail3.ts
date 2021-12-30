import {MigrationInterface, QueryRunner} from "typeorm";

export class mail31639587770656 implements MigrationInterface {
    name = 'mail31639587770656'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "public"."user" DROP CONSTRAINT "FK_bb32edcf440c4ee8fc4dc50ea25"`);
        await queryRunner.query(`ALTER TABLE "public"."user" RENAME COLUMN "mailId" TO "resetLink"`);
        await queryRunner.query(`ALTER TABLE "public"."user" RENAME CONSTRAINT "UQ_bb32edcf440c4ee8fc4dc50ea25" TO "UQ_217c7b90ae83f29a67bf199e35b"`);
        await queryRunner.query(`ALTER TABLE "public"."user" DROP CONSTRAINT "UQ_217c7b90ae83f29a67bf199e35b"`);
        await queryRunner.query(`ALTER TABLE "public"."user" DROP COLUMN "resetLink"`);
        await queryRunner.query(`ALTER TABLE "public"."user" ADD "resetLink" character varying`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "public"."user" DROP COLUMN "resetLink"`);
        await queryRunner.query(`ALTER TABLE "public"."user" ADD "resetLink" integer`);
        await queryRunner.query(`ALTER TABLE "public"."user" ADD CONSTRAINT "UQ_217c7b90ae83f29a67bf199e35b" UNIQUE ("resetLink")`);
        await queryRunner.query(`ALTER TABLE "public"."user" RENAME CONSTRAINT "UQ_217c7b90ae83f29a67bf199e35b" TO "UQ_bb32edcf440c4ee8fc4dc50ea25"`);
        await queryRunner.query(`ALTER TABLE "public"."user" RENAME COLUMN "resetLink" TO "mailId"`);
        await queryRunner.query(`ALTER TABLE "public"."user" ADD CONSTRAINT "FK_bb32edcf440c4ee8fc4dc50ea25" FOREIGN KEY ("mailId") REFERENCES "mail"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

}
