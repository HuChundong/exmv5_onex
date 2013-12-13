.class public Lcom/android/stocksettings/DeviceSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeviceSettings.java"


# static fields
.field public static final KEY_BACKLIGHTDISABLE:Ljava/lang/String; = "backlight_disable"

.field public static final KEY_BACKLIGHTNOTIFICATION:Ljava/lang/String; = "backlight_notification"

.field public static final KEY_FASTCHARGE:Ljava/lang/String; = "fastcharge"

.field public static final KEY_S2WLENGTH:Ljava/lang/String; = "s2w_length"

.field public static final KEY_S2WSTROKE:Ljava/lang/String; = "s2w_stroke"

.field public static final KEY_S2WSWITCH:Ljava/lang/String; = "s2w_switch"

.field public static final KEY_SMARTDIMMERSWITCH:Ljava/lang/String; = "smartdimmer_switch"


# instance fields
.field private mBacklightDisable:Landroid/preference/TwoStatePreference;

.field private mBacklightNotification:Landroid/preference/TwoStatePreference;

.field private mFastcharge:Landroid/preference/TwoStatePreference;

.field private mS2WLength:Landroid/preference/ListPreference;

.field private mS2WStroke:Landroid/preference/ListPreference;

.field private mS2WSwitch:Landroid/preference/TwoStatePreference;

.field private mSmartDimmerSwitch:Landroid/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->addPreferencesFromResource(I)V

    .line 39
    const-string v0, "s2w_switch"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WSwitch:Landroid/preference/TwoStatePreference;

    .line 40
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/stocksettings/Sweep2WakeSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WSwitch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/stocksettings/Sweep2WakeSwitch;

    invoke-direct {v1}, Lcom/android/stocksettings/Sweep2WakeSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    const-string v0, "s2w_stroke"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WStroke:Landroid/preference/ListPreference;

    .line 44
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WStroke:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/stocksettings/Sweep2WakeStroke;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WStroke:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/stocksettings/Sweep2WakeStroke;

    invoke-direct {v1}, Lcom/android/stocksettings/Sweep2WakeStroke;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v0, "s2w_length"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WLength:Landroid/preference/ListPreference;

    .line 48
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WLength:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/stocksettings/Sweep2WakeMinLength;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mS2WLength:Landroid/preference/ListPreference;

    new-instance v1, Lcom/android/stocksettings/Sweep2WakeMinLength;

    invoke-direct {v1}, Lcom/android/stocksettings/Sweep2WakeMinLength;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v0, "fastcharge"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mFastcharge:Landroid/preference/TwoStatePreference;

    .line 52
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mFastcharge:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/stocksettings/Fastcharge;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mFastcharge:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/stocksettings/Fastcharge;

    invoke-direct {v1}, Lcom/android/stocksettings/Fastcharge;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v0, "backlight_disable"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mBacklightDisable:Landroid/preference/TwoStatePreference;

    .line 56
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mBacklightDisable:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/stocksettings/BacklightDisable;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mBacklightDisable:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/stocksettings/BacklightDisable;

    invoke-direct {v1}, Lcom/android/stocksettings/BacklightDisable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v0, "backlight_notification"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mBacklightNotification:Landroid/preference/TwoStatePreference;

    .line 60
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mBacklightNotification:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/stocksettings/BacklightNotificationSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mBacklightNotification:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/stocksettings/BacklightNotificationSwitch;

    invoke-direct {v1}, Lcom/android/stocksettings/BacklightNotificationSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v0, "smartdimmer_switch"

    invoke-virtual {p0, v0}, Lcom/android/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mSmartDimmerSwitch:Landroid/preference/TwoStatePreference;

    .line 64
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mSmartDimmerSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/stocksettings/SmartDimmerSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/stocksettings/DeviceSettings;->mSmartDimmerSwitch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/stocksettings/SmartDimmerSwitch;

    invoke-direct {v1}, Lcom/android/stocksettings/SmartDimmerSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 73
    return-void
.end method
