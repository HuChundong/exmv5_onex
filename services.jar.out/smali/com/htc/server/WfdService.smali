.class public Lcom/htc/server/WfdService;
.super Landroid/app/Service;
.source "WfdService.java"


# static fields
.field private static final DBG:Z = true

.field private static final NOTIFY_STATE_CHANGE:I = 0x1

.field private static final PROFILE_CLOSE_SOCKET:I = 0x4

.field private static final PROFILE_CREATE_SOCKET:I = 0x1

.field private static final PROFILE_SEND_NETWORK_CONFIGS:I = 0x2

.field private static final PROFILE_WAIT_DONGLE_CONFIGS:I = 0x3

.field static final TAG:Ljava/lang/String; = "WfdService"


# instance fields
.field private final mBinder:Lcom/htc/wfdservice/IWfdService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/htc/wfdservice/IWfdServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsSocketConnected:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerIp:Ljava/lang/String;

.field private mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mClientInfo:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/WfdService;->mIsSocketConnected:Z

    .line 62
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 65
    new-instance v0, Lcom/htc/server/WfdService$1;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdService$1;-><init>(Lcom/htc/server/WfdService;)V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/htc/server/WfdService$2;

    invoke-direct {v0, p0}, Lcom/htc/server/WfdService$2;-><init>(Lcom/htc/server/WfdService;)V

    iput-object v0, p0, Lcom/htc/server/WfdService;->mBinder:Lcom/htc/wfdservice/IWfdService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    return-object v0
.end method

.method private reInitializeWfdStateMachine(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 190
    const-string v0, "WfdService"

    const-string v1, "reInitializeWfdStateMachine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->quit()V

    .line 192
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->start()V

    .line 193
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->setMode(I)V

    .line 194
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/server/WfdStateMachine;->startScanDongles(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 182
    const-class v0, Lcom/htc/wfdservice/IWfdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "WfdService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/htc/server/WfdService;->mBinder:Lcom/htc/wfdservice/IWfdService$Stub;

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 121
    const-string v1, "WfdService"

    const-string v2, "[WFD]===>onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 123
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/server/WfdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/server/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 125
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.hotspot.WPS_REGISTRAR_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.hotspot.WPS_REGISTRAR_FAIL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.hotspot.WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.hotspot.L2PE_SUCCESSFUL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.hotspot.L2PE_FAIL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.MIRROR_DONGLE_LIST_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-ne v1, v2, :cond_2

    .line 145
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    .line 146
    const-string v1, "WfdUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfdUtils.isConcurrentSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    if-nez v1, :cond_1

    .line 153
    const-string v1, "WfdService"

    const-string v2, "WfdStateMachine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    new-instance v1, Lcom/htc/server/WfdStateMachine;

    invoke-direct {v1, p0}, Lcom/htc/server/WfdStateMachine;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    .line 157
    iget-object v1, p0, Lcom/htc/server/WfdService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/server/WfdService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/htc/server/WfdService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/htc/server/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getWifiApConfiguration(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 159
    .local v0, apmConfig:Landroid/net/wifi/WifiConfiguration;
    return-void

    .line 148
    .end local v0           #apmConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    .line 149
    const-string v1, "WfdUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfdUtils.isConcurrentSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/server/WfdUtils;->isConcurrentSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "WfdService"

    const-string v1, "[WFD]===>onDestroy()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "WfdService"

    const-string v1, "[WFD]===>onDestroy(): mWfdStateMachine != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->quit()V

    .line 167
    const-string v0, "WfdService"

    const-string v1, "[WFD]===>onDestroy(): mWfdStateMachine.quit()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;

    .line 170
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/htc/server/WfdService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/server/WfdService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
