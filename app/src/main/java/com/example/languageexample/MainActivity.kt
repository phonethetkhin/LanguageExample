package com.example.languageexample

import android.graphics.Typeface
import android.os.Build
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*
import java.util.*


class MainActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


            val tfMm3 = Typeface.createFromAsset(assets, "fonts/myanmar3.ttf")
            txtTitle.typeface = tfMm3
            txtContent.typeface = tfMm3



btnZawgyi.setOnClickListener {
    setApplicationLanguage("mz")
    recreate()
}
btnEnglish.setOnClickListener {

  // setStringPref(this,"lanPref","lang","en")
    setApplicationLanguage("en")
    recreate()
}
        btnMyanmar.setOnClickListener {
        // setStringPref(this,"lanPref","lang","mmu")

            setApplicationLanguage("my")
            recreate()
        }


    }
    private fun setApplicationLanguage(newLanguage: String?)  {
        val activityRes = resources
        val activityConf = activityRes.configuration
        val newLocale = Locale(newLanguage)
        activityConf.setLocale(newLocale)
        activityRes.updateConfiguration(activityConf, activityRes.displayMetrics)

        val applicationRes = applicationContext.resources
        val applicationConf = applicationRes.configuration
        applicationConf.setLocale(newLocale)
        applicationRes.updateConfiguration(applicationConf,
            applicationRes.displayMetrics)
    }

}
