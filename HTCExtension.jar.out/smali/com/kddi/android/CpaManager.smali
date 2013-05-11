.class public Lcom/kddi/android/CpaManager;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaManager$ConnInfo;,
        Lcom/kddi/android/CpaManager$Settings;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_MODE:Ljava/lang/String; = "com.kddi.android.CPA_NAVI_MODE"

.field private static final ACTION_INITIALIZATION:Ljava/lang/String; = "com.kddi.android.CPA_INITIALIZATION"

.field public static final AUTHENTICATION_ERROR:I = -0x3

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field public static final EXTRA_CONNECTIVITY_STATUS:Ljava/lang/String; = "connStatus"

.field public static final EXTRA_ERRNO:Ljava/lang/String; = "errno"

.field public static final MODE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final MODE_NAVI:Ljava/lang/String; = "NAVI"

.field public static final PARAMETER_ERROR:I = -0x1

.field public static final PERMISSION:Ljava/lang/String; = "com.kddi.android.permission.MANAGE_CPA"

.field private static final PREF_CONN_STATUS:Ljava/lang/String; = "conn_status"

.field private static final PREF_CPA_MODE:Ljava/lang/String; = "cpa_mode"

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "cpamgr_info"

.field private static final PREF_RADIO_AVAILABLE:Ljava/lang/String; = "radio_available"

.field public static final RADIO_NOT_AVAILABLE:I = -0x2

.field private static final SECURITY_DBG:Z = false

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_ERROR:I = -0x4


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mMode:Ljava/lang/String;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 453
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/kddi/android/CpaManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v2, "DEFAULT"

    iput-object v2, p0, Lcom/kddi/android/CpaManager;->mMode:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Construct CpaManager, from pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    .line 133
    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, checked:I
    if-eqz v0, :cond_1

    .line 139
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "To manager CPA need the special permission !"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/kddi/android/CpaManager;->mCM:Landroid/net/ConnectivityManager;

    .line 143
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/kddi/android/CpaManager;->mTM:Landroid/telephony/TelephonyManager;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CpaManager cpa Prefs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kddi.android.CPA_INITIALIZATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 6

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 232
    .local v0, context:Landroid/content/Context;
    :try_start_0
    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    const-string v4, "com.android.phone"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedPreferences context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_0

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSharedPreferences context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 240
    const-string v3, "cpamgr_info"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 243
    :cond_0
    return-object v2

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNaviMode()Z
    .locals 4

    .prologue
    .line 258
    const-string v2, "NAVI"

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    const-string v2, "isNaviMode, true"

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x1

    .line 269
    :goto_0
    return v2

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 264
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 265
    const-string v2, "cpa_mode"

    const-string v3, "DEFAULT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, mode:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNaviMode(), mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 267
    const-string v2, "NAVI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 269
    .end local v0           #mode:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRadioOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    const-string v2, "isRadioOn()..."

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 250
    const-string v2, "radio_available"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 251
    .local v1, radioAvailable:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefs radio_available="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 254
    .end local v1           #radioAvailable:Z
    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 456
    const-string v0, "CpaManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 459
    sget-boolean v0, Lcom/kddi/android/CpaManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "CpaManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    return-void
.end method

.method private static logs(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 467
    return-void
.end method

.method private notifyCpaConnChange(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, cpaIntent:Landroid/content/Intent;
    const-string v1, "connStatus"

    invoke-virtual {p0}, Lcom/kddi/android/CpaManager;->getConnStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "errno"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    const-string v2, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I
    .locals 6
    .parameter "mode"
    .parameter "settings"

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 168
    const-string v4, "NAVI"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    #calls: Lcom/kddi/android/CpaManager$Settings;->isEmpty()Z
    invoke-static {p2}, Lcom/kddi/android/CpaManager$Settings;->access$000(Lcom/kddi/android/CpaManager$Settings;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "DEFAULT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    :cond_1
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mMode:Ljava/lang/String;

    .line 171
    const-string v2, "NAVI"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMode(), settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logs(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 174
    const-string v2, "changeMode() sim ready, ok to change mode."

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 183
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kddi.android.CPA_NAVI_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "cpa_mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "NAVI"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    const-string v2, "cpa_apn"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "cpa_userId"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "cpa_passward"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "cpa_authType"

    iget v3, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v2, "cpa_proxyHost"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "cpa_proxyPort"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "cpa_dns1"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "cpa_dns2"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    const-string v3, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeMode.. mMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x0

    .line 207
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 176
    :cond_4
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    const-string v2, "changeMode(), return RADIO_NOT_AVAILABLE"

    invoke-static {v2}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, v3}, Lcom/kddi/android/CpaManager;->notifyCpaConnChange(I)V

    move v2, v3

    .line 179
    goto :goto_0

    .line 205
    :cond_5
    const-string v3, "changeMode.. PARAMETER_ERROR"

    invoke-static {v3}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v2}, Lcom/kddi/android/CpaManager;->notifyCpaConnChange(I)V

    goto :goto_0
.end method

.method public getConnInfo()Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 13

    .prologue
    .line 278
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getConnInfo() conn status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/kddi/android/CpaManager;->getConnStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v0}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    .line 280
    .local v0, ci:Lcom/kddi/android/CpaManager$ConnInfo;
    invoke-virtual {p0}, Lcom/kddi/android/CpaManager;->getConnStatus()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 281
    iget-object v11, p0, Lcom/kddi/android/CpaManager;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 282
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 283
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getConnInfo() active networkType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 285
    :cond_0
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_7

    .line 287
    :cond_1
    iget-object v11, p0, Lcom/kddi/android/CpaManager;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v10

    .line 288
    .local v10, lp:Landroid/net/LinkProperties;
    if-eqz v10, :cond_6

    .line 289
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v9

    .line 290
    .local v9, links:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 291
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 292
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 293
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 294
    .local v5, ip:Landroid/net/LinkAddress;
    if-eqz v5, :cond_2

    .line 295
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 296
    .local v6, ipAddress:Ljava/net/InetAddress;
    if-eqz v6, :cond_2

    .line 297
    iput-object v6, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    .line 304
    .end local v5           #ip:Landroid/net/LinkAddress;
    .end local v6           #ipAddress:Ljava/net/InetAddress;
    .end local v7           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    :cond_3
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v2

    .line 305
    .local v2, dnsAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 306
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 307
    .local v8, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/4 v3, 0x0

    .line 308
    .local v3, index:I
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 309
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 310
    .local v1, dns:Ljava/net/InetAddress;
    if-eqz v1, :cond_5

    .line 311
    iget-object v11, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    aput-object v1, v11, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 316
    :cond_5
    const/4 v11, 0x1

    if-le v3, v11, :cond_4

    .line 330
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v2           #dnsAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v3           #index:I
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v8           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v9           #links:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v10           #lp:Landroid/net/LinkProperties;
    :cond_6
    :goto_0
    return-object v0

    .line 324
    .restart local v4       #info:Landroid/net/NetworkInfo;
    :cond_7
    const-string v11, "getConnInfo() no active network, or active network isn\'t CPA"

    invoke-static {v11}, Lcom/kddi/android/CpaManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_8
    const-string v11, "getConnInfo() conn status isn\'t CONNECTED."

    invoke-static {v11}, Lcom/kddi/android/CpaManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnStatus()I
    .locals 5

    .prologue
    .line 215
    const/4 v2, 0x4

    .line 216
    .local v2, status:I
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/kddi/android/CpaManager;->isNaviMode()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 219
    :try_start_0
    const-string v3, "conn_status"

    const/4 v4, 0x4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 224
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get CPA conn status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    .line 225
    return v2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "get CPA conn status, but NumberFormatException"

    invoke-static {v3}, Lcom/kddi/android/CpaManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
