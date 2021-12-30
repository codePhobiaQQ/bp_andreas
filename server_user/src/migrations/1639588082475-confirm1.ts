import {MigrationInterface, QueryRunner} from "typeorm";

export class confirm11639588082475 implements MigrationInterface {
    name = 'confirm11639588082475'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "public"."user" ADD "confirmLink" character varying`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE "public"."user" DROP COLUMN "confirmLink"`);
    }

}
