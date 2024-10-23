package com.devoteam.connect_service_app

import android.car.Car
import android.car.drivingstate.CarUxRestrictions
import android.car.drivingstate.CarUxRestrictionsManager
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterFragmentActivity(){

    private val CHANNEL = "com.example.car_ux_restrictions"
    private var methodChannel: MethodChannel? = null
    private var car: Car? = null
    private var carUxRestrictionsManager: CarUxRestrictionsManager? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)

        car = Car.createCar(applicationContext)
        try {
            carUxRestrictionsManager = car?.getCarManager(Car.CAR_UX_RESTRICTION_SERVICE) as CarUxRestrictionsManager?
            carUxRestrictionsManager?.registerListener(restrictionsListener)
            restrictionsListener.onUxRestrictionsChanged(
                carUxRestrictionsManager?.currentCarUxRestrictions
            );
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private val restrictionsListener = CarUxRestrictionsManager.OnUxRestrictionsChangedListener { restrictions ->
        sendRestrictionsToFlutter(restrictions)
    }

    private fun sendRestrictionsToFlutter(restrictions: CarUxRestrictions) {
        methodChannel?.invokeMethod("onUxRestrictionsChanged", convertRestrictionsToMap(restrictions))
    }

    private fun convertRestrictionsToMap(restrictions: CarUxRestrictions): Map<String, Any> {
        return mapOf(
            "requiresDistractionOptimization" to restrictions.isRequiresDistractionOptimization,
            "maxContentDepth" to restrictions.maxContentDepth,
            "maxCumulativeContentItems" to restrictions.maxCumulativeContentItems,
        )
    }

    override fun onDestroy() {
        super.onDestroy()
        carUxRestrictionsManager?.unregisterListener()
        car?.disconnect()
    }
}
