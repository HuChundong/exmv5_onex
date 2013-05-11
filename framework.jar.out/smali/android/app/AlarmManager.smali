.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Landroid/app/HtcIfAlarmManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$HTCSocketMonitorImpl;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I = 0x0

.field private static final SOCKET_ALARM:Ljava/lang/String; = "Socket_Alarm"


# instance fields
.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 95
    invoke-virtual {p0}, Landroid/app/AlarmManager;->registerHTCSocketMonitorCallBack()V

    .line 97
    return-void
.end method


# virtual methods
.method public RXTXGroupingEvent()V
    .locals 1

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0}, Landroid/app/IAlarmManager;->RXTXGroupingEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V

    .line 358
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->RemoveAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelWithoutRemoveAlignmentRecord(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerHTCSocketMonitorCallBack()V
    .locals 3

    .prologue
    .line 124
    const-string v1, "Socket_Alarm"

    const-string/jumbo v2, "registerHTCSocketMonitorCallBack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v1, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "Socket_Alarm"

    const-string/jumbo v2, "mSocketMonitor!=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v1, "Socket_Alarm"

    const-string/jumbo v2, "set mSocketMonitor"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/app/AlarmManager$HTCSocketMonitorImpl;

    invoke-direct {v0, p0, p0}, Landroid/app/AlarmManager$HTCSocketMonitorImpl;-><init>(Landroid/app/AlarmManager;Ljava/lang/Object;)V

    .line 134
    .local v0, mSm:Landroid/app/AlarmManager$HTCSocketMonitorImpl;
    invoke-static {v0}, Ljava/net/Socket;->setIHTCSocketMonitor(Ljava/net/Socket$IHTCSocketMonitor;)V

    goto :goto_0
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "operation"

    .prologue
    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAlignmentRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setAlignmentRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentTimeMillis(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setCurrentTimeMillis(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTime(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .parameter "timeZone"

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startHibernate()V
    .locals 1

    .prologue
    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopHibernate()V
    .locals 1

    .prologue
    .line 417
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method
