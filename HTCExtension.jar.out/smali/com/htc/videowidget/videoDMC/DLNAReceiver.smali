.class public Lcom/htc/videowidget/videoDMC/DLNAReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DLNAReceiver.java"


# static fields
.field private static final ACTION_DESTROY_NOTIFY:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

.field private static final ACTION_PLAY_END_NOTIFY:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.PLAY_END"

.field private static final ACTION_STOP_POSITION:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

.field private static final APP_NAME:Ljava/lang/String; = "appName"

.field private static final CONTROLLER_NAME:Ljava/lang/String; = "controllerName"

.field private static final DLNA_BROADCAST_COOKIE:Ljava/lang/String; = "cookie"

.field private static final FILEPATH:Ljava/lang/String; = "media"

.field private static final POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "DLNAReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 44
    :cond_0
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver onReceive(), null arguments"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, strAction:Ljava/lang/String;
    const-string v9, "appName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, strAppName:Ljava/lang/String;
    const-string v9, "cookie"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, broadcastCookie:I
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver, ============= Intent\'s Data ============="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, Action  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, AppName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, Cookie  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver, ========================================="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez v6, :cond_3

    .line 59
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver onReceive(), action is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_3
    if-nez v7, :cond_4

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 66
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver onReceive(), AppName is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 71
    :cond_4
    invoke-static {p1}, Lcom/htc/videowidget/videoDMC/DMCUtil;->getSessionCookie(Landroid/content/Context;)I

    move-result v3

    .line 72
    .local v3, iCookie:I
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, Context\'s Cookie = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eq v3, v0, :cond_5

    .line 76
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver onReceive(), cookie is invalid!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :cond_5
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver onReceive(), Action("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), AppName("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v9, "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 84
    const-string v9, "media"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, strFilePath:Ljava/lang/String;
    const-string v9, "position"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    long-to-int v4, v9

    .line 86
    .local v4, nPosition:I
    if-eqz v8, :cond_6

    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 88
    :cond_6
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver filePath or position as null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    :cond_7
    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 95
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, write position to Streaming preference, position:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v11, v4, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] File:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    mul-int/lit16 v9, v4, 0x3e8

    invoke-static {p1, v9, v8}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastStreamPosFromSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_8
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, sCanonicalFilePath:Ljava/lang/String;
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, Write Position as CanonicalFilePath        = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, write position to preference, position(ms) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v11, v4, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    mul-int/lit16 v9, v4, 0x3e8

    invoke-static {p1, v9, v5}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    .end local v2           #file:Ljava/io/File;
    .end local v5           #sCanonicalFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/io/IOException;
    const-string v9, "DLNAReceiver"

    const-string v10, "Can\'t Get Canonical Path, Use the original Save Position"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, Write Position as Original FilePath        = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v9, "DLNAReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DLNAReceiver, write position to preference, position(ms) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v11, v4, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    mul-int/lit16 v9, v4, 0x3e8

    invoke-static {p1, v9, v8}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #nPosition:I
    .end local v8           #strFilePath:Ljava/lang/String;
    :cond_9
    const-string v9, "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "com.htc.htcdlnamiddlelayer.PLAY_END"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 121
    :cond_a
    const-string v9, "DLNAReceiver"

    const-string v10, "DLNAReceiver remove preference."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p1}, Lcom/htc/videowidget/videoDMC/DMCUtil;->removeDLNAPref(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
