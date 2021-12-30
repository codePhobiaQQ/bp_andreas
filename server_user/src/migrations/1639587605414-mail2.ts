import {MigrationInterface, QueryRunner} from "typeorm";

export class mail21639587605414 implements MigrationInterface {
    name = 'mail21639587605414'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "public"."user" ADD "mailId" integer`);
        await queryRunner.query(`ALTER TABLE "public"."user" ADD CONSTRAINT "UQ_bb32edcf440c4ee8fc4dc50ea25" UNIQUE ("mailId")`);
        await queryRunner.query(`ALTER TABLE "public"."user" ADD CONSTRAINT "FK_bb32edcf440c4ee8fc4dc50ea25" FOREIGN KEY ("mailId") REFERENCES "mail"("id") ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "public"."user" DROP CONSTRAINT "FK_bb32edcf440c4ee8fc4dc50ea25"`);
        await queryRunner.query(`ALTER TABLE "public"."user" DROP CONSTRAINT "UQ_bb32edcf440c4ee8fc4dc50ea25"`);
        await queryRunner.query(`ALTER TABLE "public"."user" DROP COLUMN "mailId"`);
    }

}
