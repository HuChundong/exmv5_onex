.class Lcom/sprint/internal/ExtInterfaceConnector;
.super Ljava/lang/Object;
.source "ExtInterfaceConnector.java"


# static fields
.field private static final DM_ADDR:Ljava/lang/String; = "./DMAcc/AppAddr/SrvAddr/Addr"

.field private static final DM_ADDR_TYPE:Ljava/lang/String; = "./DMAcc/AppAddr/SrvAddr/AddrType"

.field private static final DM_NAME:Ljava/lang/String; = "./DMAcc/Name"

.field private static final INTENT_EXTRA_RESPONSE:Ljava/lang/String; = "Response"

.field private static final INTENT_EXTRA_RW:Ljava/lang/String; = "RW"

.field private static final INTENT_EXTRA_TREENODE:Ljava/lang/String; = "NodeName"

.field private static final INTENT_EXTRA_VALUE:Ljava/lang/String; = "Value"

.field private static final INTENT_EXT_INTERFACE:Ljava/lang/String; = "com.htc.omadm.extinterface"

.field private static final INTENT_EXT_INTERFACE_RESPONSE:Ljava/lang/String; = "com.htc.omadm.extinterface.response"

.field private static final MAX_WAIT_TIME:I = 0x1388

.field private static sInstance:Lcom/sprint/internal/ExtInterfaceConnector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mResponseReceived:Z

.field private final mResponseReceiver:Landroid/content/BroadcastReceiver;

.field private mResult:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/sprint/internal/ExtInterfaceConnector$1;

    invoke-direct {v0, p0}, Lcom/sprint/internal/ExtInterfaceConnector$1;-><init>(Lcom/sprint/internal/ExtInterfaceConnector;)V

    iput-object v0, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/sprint/internal/ExtInterfaceConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sprint/internal/ExtInterfaceConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceived:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sprint/internal/ExtInterfaceConnector;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static getSingleton(Landroid/content/Context;)Lcom/sprint/internal/ExtInterfaceConnector;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/sprint/internal/ExtInterfaceConnector;->sInstance:Lcom/sprint/internal/ExtInterfaceConnector;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sprint/internal/ExtInterfaceConnector;

    invoke-direct {v0, p0}, Lcom/sprint/internal/ExtInterfaceConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/internal/ExtInterfaceConnector;->sInstance:Lcom/sprint/internal/ExtInterfaceConnector;

    .line 47
    :cond_0
    sget-object v0, Lcom/sprint/internal/ExtInterfaceConnector;->sInstance:Lcom/sprint/internal/ExtInterfaceConnector;

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "node"

    .prologue
    const/4 v4, 0x0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.omadm.extinterface"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "NodeName"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v3, "RW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v4, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 88
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceived:Z

    .line 89
    iget-object v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.htc.omadm.extinterface.response"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 92
    .local v1, start:J
    :goto_0
    iget-boolean v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceived:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x1388

    cmp-long v3, v5, v7

    if-gez v3, :cond_0

    .line 94
    :try_start_1
    iget-object v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mLock:Ljava/lang/Object;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    goto :goto_0

    .line 101
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    iget-boolean v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResponseReceived:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mResult:Ljava/lang/String;

    :goto_1
    return-object v3

    .line 102
    .end local v1           #start:J
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 104
    .restart local v1       #start:J
    :cond_1
    const-string v3, "null"

    goto :goto_1
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "node"
    .parameter "value"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.omadm.extinterface"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "NodeName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "RW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "Value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/sprint/internal/ExtInterfaceConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getDMAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "./DMAcc/AppAddr/SrvAddr/Addr"

    invoke-direct {p0, v0}, Lcom/sprint/internal/ExtInterfaceConnector;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDMAddrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "./DMAcc/AppAddr/SrvAddr/AddrType"

    invoke-direct {p0, v0}, Lcom/sprint/internal/ExtInterfaceConnector;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDMName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "./DMAcc/Name"

    invoke-direct {p0, v0}, Lcom/sprint/internal/ExtInterfaceConnector;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDMAddr(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 67
    const-string v0, "./DMAcc/AppAddr/SrvAddr/Addr"

    invoke-direct {p0, v0, p1}, Lcom/sprint/internal/ExtInterfaceConnector;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setDMAddrType(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 71
    const-string v0, "./DMAcc/AppAddr/SrvAddr/AddrType"

    invoke-direct {p0, v0, p1}, Lcom/sprint/internal/ExtInterfaceConnector;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setDMName(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 63
    const-string v0, "./DMAcc/Name"

    invoke-direct {p0, v0, p1}, Lcom/sprint/internal/ExtInterfaceConnector;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
