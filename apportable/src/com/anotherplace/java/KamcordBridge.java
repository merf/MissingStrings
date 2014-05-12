package com.anotherplace.java;

import com.anotherplace.java.*;

import android.util.Log;
import android.content.Context;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
//import android.R;

import com.kamcord.android.Kamcord;

public class KamcordBridge
{
	Activity mainActivity;
    
    private static final String TAG = "KamcordBridge";

    public KamcordBridge(Activity activity, String key, String secret)
    {
		mainActivity = activity;
        
        Kamcord.initActivity(mainActivity);
        Kamcord.initKeyAndSecret(key, secret, "Dragon Finga");        
    }
    
    public void beginDraw()
    {
        Kamcord.beginDraw();
    }
    
    public void endDraw()
    {
        Kamcord.endDraw();
    }
    
    public void startRecording()
    {
        Log.d(TAG, "startRecording");
        Kamcord.startRecording();
    }
    
    public void stopRecording()
    {
        Log.d(TAG, "stopRecording");
        Kamcord.stopRecording();
    }
    
    public void pauseRecording()
    {
        Log.d(TAG, "pauseRecording");
        Kamcord.pauseRecording();
    }
    
    public void resumeRecording()
    {
        Log.d(TAG, "resumeRecording");
        Kamcord.resumeRecording();
    }
    
    public void showView()
    {
        Log.d(TAG, "showView");
        Kamcord.showView();
    }
	
	public boolean isEnabled()
	{
		return Kamcord.isEnabled();
	}
}