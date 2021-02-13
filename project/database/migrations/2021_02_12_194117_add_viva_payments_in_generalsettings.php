<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class AddVivaPaymentsInGeneralsettings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::table('generalsettings', function (Blueprint $table) {
            $table->string('viva_key')->nullable();
            $table->string('viva_merchant')->nullable();
            $table->string('viva_public')->nullable();
            $table->string('viva_client')->nullable();
            $table->string('viva_client_secret')->nullable();
            $table->string('viva_text')->nullable();
            $table->enum('viva_env',['live','production'])->default('live');
            $table->enum('viva_check',[0,1])->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('generalsettings', function (Blueprint $table) {
            //
        });
    }
}
