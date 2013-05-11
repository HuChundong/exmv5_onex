.class public Lcom/htc/album/TabPluginDevice/smart/EventSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "EventSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;


# static fields
.field private static final DEFAULT_AUTO_RETRIEVE:Z = false

.field private static final KEY_AUTO_RETRIEVE:Ljava/lang/String; = "event_auto_retrieve"

.field private static final LOG_TAG:Ljava/lang/String; = "EventSettings"


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 30
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-void
.end method

.method public static getAutoRetrievePref(Landroid/content/Context;)Z
    .locals 5
    .parameter "appContext"

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, bIsUpdate:Z
    if-eqz p0, :cond_0

    .line 190
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "event_auto_retrieve"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 193
    .end local v1           #preference:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "EventSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][EventSettings][getAutoRetrievePref]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v0
.end method

.method private initPreference()V
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 46
    .local v1, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "event_auto_retrieve"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 47
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getAutoRetrievePref(Landroid/content/Context;)Z

    move-result v0

    .line 49
    .local v0, bIsChecked:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 51
    const-string v2, "EventSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][EventSettings][initPreference] enable auto retrieve: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static setAutoRetrievePref(Landroid/content/Context;Z)V
    .locals 5
    .parameter "appContext"
    .parameter "enable"

    .prologue
    .line 198
    const-string v2, "EventSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][EventSettings][setAutoRetrievePref] set auto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 200
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "event_auto_retrieve"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void
.end method

.method private updateAutoRetrievePref(Ljava/lang/Object;)V
    .locals 4
    .parameter "enableAuto"

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 181
    .local v0, bEnableAuto:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 182
    const-string v1, "EventSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][EventSettings][updateAutoRetrievePref] set auto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 161
    :goto_0
    return-object v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 140
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 142
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 143
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a0157

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 147
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    new-instance v2, Lcom/htc/album/TabPluginDevice/smart/EventSettings$1;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings$1;-><init>(Lcom/htc/album/TabPluginDevice/smart/EventSettings;)V

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 39
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->initPreference()V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->mPrefAutoRetrieve:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p2}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->updateAutoRetrievePref(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 58
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 64
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
