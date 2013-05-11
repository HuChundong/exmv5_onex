.class public Landroid/app/ApplicationErrorReport;
.super Ljava/lang/Object;
.source "ApplicationErrorReport.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/app/HtcIfApplicationErrorReport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationErrorReport$RunningServiceInfo;,
        Landroid/app/ApplicationErrorReport$BatteryInfo;,
        Landroid/app/ApplicationErrorReport$AnrInfo;,
        Landroid/app/ApplicationErrorReport$CrashInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ApplicationErrorReport;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.default"

.field public static final HTC_APPS_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.htc.apps"

.field static final SYSTEM_APPS_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.system.apps"

.field public static final TYPE_ANR:I = 0x2

.field public static final TYPE_BATTERY:I = 0x3

.field public static final TYPE_CRASH:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_RUNNING_SERVICE:I = 0x5


# instance fields
.field public anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

.field public batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

.field public crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public dropboxTag:Ljava/lang/String;

.field public installerPackageName:Ljava/lang/String;

.field public logName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

.field public systemApp:Z

.field public time:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 700
    new-instance v0, Landroid/app/ApplicationErrorReport$1;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/ApplicationErrorReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 171
    return-void
.end method

.method public static getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "appFlags"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 197
    .local v2, pm:Landroid/content/pm/PackageManager;
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/htc/htcjavaflag/NonHTCAPList;->isNonHTCAP(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 199
    .local v1, htcApp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 201
    :try_start_0
    const-string v3, "HTCInstaller"

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :cond_0
    :goto_1
    invoke-static {p0, p1, p2, v1}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    .line 197
    .end local v1           #htcApp:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    .restart local v1       #htcApp:Z
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/ComponentName;
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "appFlags"
    .parameter "htcApp"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 217
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableErrorRport()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v6

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "send_action_app_error"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, enabled:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "send_htc_error_report"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 230
    .local v2, htcEnabled:I
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 238
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz p3, :cond_4

    .line 239
    if-eqz v2, :cond_0

    .line 241
    const-string v7, "com.htc.feedback"

    invoke-static {v3, p1, v7}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 242
    .local v5, resultComponent:Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .end local v5           #resultComponent:Landroid/content/ComponentName;
    :goto_1
    move-object v6, v5

    goto :goto_0

    .restart local v5       #resultComponent:Landroid/content/ComponentName;
    :cond_3
    move-object v5, v6

    goto :goto_1

    .line 244
    .end local v5           #resultComponent:Landroid/content/ComponentName;
    :cond_4
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, candidate:Ljava/lang/String;
    invoke-static {v3, p1, v0}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 251
    .local v4, result:Landroid/content/ComponentName;
    if-eqz v4, :cond_5

    move-object v6, v4

    .line 252
    goto :goto_0

    .line 257
    :cond_5
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_6

    .line 258
    const-string/jumbo v6, "ro.error.receiver.system.apps"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v3, p1, v0}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 260
    if-eqz v4, :cond_6

    move-object v6, v4

    .line 261
    goto :goto_0

    .line 266
    :cond_6
    const-string/jumbo v6, "ro.error.receiver.default"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v3, p1, v0}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_0
.end method

.method static getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .parameter "pm"
    .parameter "errorPackage"
    .parameter "receiverPackage"

    .prologue
    const/4 v2, 0x0

    .line 281
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v2

    .line 286
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 293
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 296
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "installerPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "systemApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 726
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    .line 740
    :goto_0
    :pswitch_0
    return-void

    .line 728
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getDropBoxTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->logName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getReportType()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    return v0
.end method

.method public getSystemApp()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 762
    iget-wide v0, p0, Landroid/app/ApplicationErrorReport;->time:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/ApplicationErrorReport;->time:J

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 336
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->logName:Ljava/lang/String;

    .line 367
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :pswitch_1
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 339
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 340
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 341
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    goto :goto_1

    .line 344
    :pswitch_2
    new-instance v0, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 345
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 346
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 347
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    goto :goto_1

    .line 350
    :pswitch_3
    new-instance v0, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 351
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 352
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 353
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    goto :goto_1

    .line 356
    :pswitch_4
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 357
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 358
    iput-object v3, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 359
    new-instance v0, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    goto :goto_1

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setDropBoxTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 175
    iput-object p1, p0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/app/ApplicationErrorReport;->logName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 300
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-wide v0, p0, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->logName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 312
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 315
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 318
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
