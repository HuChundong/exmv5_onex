.class public Lcom/htc/videowidget/videoview/utilities/HdmiHelper;
.super Ljava/lang/Object;
.source "HdmiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.intent.action.HDMI_AUDIO_PLUG"

.field private static final ACTION_HDMI_PLUG:Ljava/lang/String; = "HDMI_CABLE_CONNECTED"

.field private static final ACTION_HDMI_UNPLUG:Ljava/lang/String; = "HDMI_CABLE_DISCONNECTED"

.field private static final HDMI_PLUGIN_STATE:I = 0x5

.field private static final PLUGIN:Ljava/lang/String; = "PLUG-IN"

.field protected static final TAG:Ljava/lang/String; = "HdmiHelper"

.field private static final UNPLUG:Ljava/lang/String; = "UNPLUG"


# instance fields
.field private final mAudioHdmiHandler:Landroid/os/Handler;

.field protected mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 36
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper$2;-><init>(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mAudioHdmiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/HdmiHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isHDMIConnected()Z
    .locals 5

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapIDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 112
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 109
    const-string v2, "HdmiHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IsHDMIConnected][exception]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v0, 0x1

    .line 173
    const-string v1, "HdmiHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startMonitor], context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->isHDMIConnected()Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->startUnplugedMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->startPlugedMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z

    goto :goto_0
.end method

.method public startPlugedMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 117
    const-string v1, "HdmiHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startPlugedMonitor], context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 123
    :cond_1
    const-string v1, "HdmiHelper"

    const-string v2, "registerReceiver: ACTION_HDMI_PLUG"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 127
    const-string v1, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mAudioHdmiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startUnplugedMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 135
    const-string v1, "HdmiHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[startUnplugedMonitor], context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 143
    const-string v1, "HdmiHelper"

    const-string v2, "registerReceiver: ACTION_HDMI_UNPLUG"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mAudioHdmiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 147
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stopMonitor()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v0, "HdmiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopMonitor], mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mContext:Landroid/content/Context;

    .line 165
    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->mCallback:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_1
.end method
