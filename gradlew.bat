package com.example.timezoneexample

import android.content.Intent
import android.os.Bundle
import android.provider.Settings
import android.widget.Toast
import androidx.annotation.RequiresPermission
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*
import java.util.*


class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)



        btnCurrentTime.setOnClickListener {
            if(isTAuto == 0)
            {
                val isTAuto = Settings.Global.getInt(contentResolver, Settings.Global.AUTO_TIME)
                val isTzAuto = Settings.Global.getInt(contentResolver, Settings.Global.AUTO_TIME_ZONE)
                Toast.makeText(this,"blah blah",Toast.LENGTH_SHORT).show()
                startActivity(Intent(Settings.ACTION_DATE_SETTINGS));
            }
            else
            {
                val c = Calendar.getInstance()
                txtTimeResult.text=c.time.toString()
            }
        }
        btnTimeZone.setOnClickListener {
            if(isTzAuto == 0)
            {
                val isTAuto = Settings.Global.getInt(contentResolver, Settings.Global.AUTO_TIME)
                val isTzAuto = Settings.Global.getInt(contentResolver, Settings.Global.AUTO_TIME_ZONE)
                Toast.makeText(this,"barnyar barnyar",Toast.LENGTH_SHORT).show()

                startActivity(Intent(Settings.ACTION_DATE_SETTINGS));
            }
            else
            {
                val c = Calendar.getInstance()
                txtTimeResult.text=c.time.toString()
            }

        }

    }
}



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    