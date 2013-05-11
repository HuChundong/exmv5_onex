.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/app/HtcIfNotificationManager;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final DEFAULT_SHARE_LED_REPEAT_TIMES:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "NotificationManager"

    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/NotificationManager;->DEFAULT_SHARE_LED_REPEAT_TIMES:I

    .line 92
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public static getService()Landroid/app/INotificationManager;
    .locals 3

    .prologue
    .line 79
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 87
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 82
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .restart local v0       #b:Landroid/os/IBinder;
    if-nez v0, :cond_1

    sget-object v1, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v2, "The Notification Service doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 87
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 6
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 156
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 158
    .local v2, service:Landroid/app/INotificationManager;
    if-nez v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v3, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, pkg:Ljava/lang/String;
    sget-boolean v3, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": cancel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    :try_start_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": cancel("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 5

    .prologue
    .line 178
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 180
    .local v1, service:Landroid/app/INotificationManager;
    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, pkg:Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancelAll()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    :try_start_0
    invoke-interface {v1, v0}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 5
    .parameter "pkg"
    .parameter "id"

    .prologue
    .line 193
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 195
    .local v1, service:Landroid/app/INotificationManager;
    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelNotification, pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    if-nez p1, :cond_2

    .line 199
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "pkg==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_2
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v3, "cancelNotification [Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V
    .locals 0
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "priority"
    .parameter "notification"
    .parameter "idReceived"

    .prologue
    .line 272
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 5
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 210
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 212
    .local v1, service:Landroid/app/INotificationManager;
    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 214
    :cond_0
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueToast, pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    if-nez p1, :cond_2

    .line 216
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "pkg==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_2
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    const-string v3, "enqueueToast [Exception]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllNotificationRecord()[Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, bundles:[Landroid/os/Bundle;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 256
    .local v3, service:Landroid/app/INotificationManager;
    if-nez v3, :cond_0

    move-object v1, v0

    .line 264
    .end local v0           #bundles:[Landroid/os/Bundle;
    .local v1, bundles:[Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 258
    .end local v1           #bundles:[Landroid/os/Bundle;
    .restart local v0       #bundles:[Landroid/os/Bundle;
    :cond_0
    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, pkg:Ljava/lang/String;
    sget-boolean v4, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v4, :cond_1

    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": getAllNotificationRecord()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/app/INotificationManager;->getAllNotificationRecord()[Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 264
    .end local v0           #bundles:[Landroid/os/Bundle;
    .restart local v1       #bundles:[Landroid/os/Bundle;
    goto :goto_0

    .line 262
    .end local v1           #bundles:[Landroid/os/Bundle;
    .restart local v0       #bundles:[Landroid/os/Bundle;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 108
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 6
    .parameter "tag"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 123
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 124
    .local v5, idOut:[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 126
    .local v0, service:Landroid/app/INotificationManager;
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, pkg:Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 131
    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 132
    const/4 v2, 0x0

    aget v2, v5, v2

    if-eq p2, v2, :cond_0

    .line 133
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify: id corrupted: sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setShareLED(I)V
    .locals 7
    .parameter "repeatTimes"

    .prologue
    .line 234
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/leds/sharekey/breath_times"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, fileShareLED:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 238
    .local v3, service:Landroid/app/INotificationManager;
    if-nez v3, :cond_1

    .line 248
    .end local v3           #service:Landroid/app/INotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v3       #service:Landroid/app/INotificationManager;
    :cond_1
    iget-object v4, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, pkg:Ljava/lang/String;
    sget-boolean v4, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v4, :cond_2

    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": setShareLED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    :try_start_0
    invoke-interface {v3, p1}, Landroid/app/INotificationManager;->setShareLED(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    sget-object v4, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": setShareLED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShareLED(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->setShareLED(I)V

    .line 231
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
