import {MigrationInterface, QueryRunner} from "typeorm";

export class mail1639587265976 implements MigrationInterface {
    name = 'mail1639587265976'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "mail" ("id" SERIAL NOT NULL, "email" character varying NOT NULL, "link" character varying NOT NULL, CONSTRAINT "UQ_16ca2a55636bd86c31f3c822e61" UNIQUE ("email"), CONSTRAINT "PK_5407da42b983ba54c6c62d462d3" PRIMARY KEY ("id"))`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`DROP TABLE "mail"`);
    }

}
