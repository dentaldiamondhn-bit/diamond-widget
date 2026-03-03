package com.dentaldiamondhn.calendarwidget;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends Activity {
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        // Set up UI
        setupUI();
    }
    
    private void setupUI() {
        TextView titleText = findViewById(R.id.title_text);
        Button openCalendarButton = findViewById(R.id.open_calendar_button);
        
        titleText.setText("Diamond Link Calendar Widget");
        
        openCalendarButton.setOnClickListener(v -> {
            // Open the main calendar app
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setData(Uri.parse("https://diamond-link-i8fctps1i-diamond-link.vercel.app/calendario"));
            startActivity(intent);
        });
    }
}
