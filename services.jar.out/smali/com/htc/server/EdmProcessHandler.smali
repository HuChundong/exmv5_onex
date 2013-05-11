.class public Lcom/htc/server/EdmProcessHandler;
.super Ljava/lang/Object;
.source "EdmProcessHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    }
.end annotation


# static fields
.field public static final EDM_PROCESS_DEFAULT_TIMEOUT:I = 0x2710

.field public static final EDM_PROCESS_ERROR_STILL_RUNNING:I = -0x1

.field public static final EDM_STATUS_EXECUTING:I = 0x1

.field public static final EDM_STATUS_FINISHED:I = 0x3

.field public static final EDM_STATUS_NONE_USED:I = 0x0

.field public static final EDM_STATUS_TIMEOUT:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG_PROCESSHANDLER:Z = false

.field private static final TAG:Ljava/lang/String; = "EdmProcessHandler"

.field private static final localLOGV:Z

.field private static mStatusRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/EdmProcessHandler;->HTC_DEBUG_PROCESSHANDLER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/server/EdmProcessHandler;->mHandler:Landroid/os/Handler;

    .line 43
    sget-object v0, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/server/EdmProcessHandler;->HTC_DEBUG_PROCESSHANDLER:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/server/EdmProcessHandler;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/server/EdmProcessHandler;->getRequestCodeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/EdmProcessHandler;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/server/EdmProcessHandler;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRequestCodeString(I)Ljava/lang/String;
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN CODE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "WIPE_SD_CARD"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "ADD_EAS_ACCOUNT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "REMOVE_EAS_ACCOUNT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "GET_ACTIVE_SYNC_ID"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "INSTALL_CERTIFICATE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "ADD_VPN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "DELETE_VPN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_7
    new-instance v0, Ljava/lang/String;

    const-string v1, "GET_VPN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "ENCRYPT_SD_CARD"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getStatusString(I)Ljava/lang/String;
    .locals 3
    .parameter "status"

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "STILL_RUNNING"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "NONE_USED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "EXECUTING"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .locals 8

    .prologue
    .line 128
    sget-object v4, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 129
    :try_start_0
    sget-object v3, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 130
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;>;"
    const-string v3, "EdmProcessHandler"

    const-string v5, "***Dumping all current request code status which ever executed***"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "EdmProcessHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current system time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const-string v3, "EdmProcessHandler"

    const-string v5, "Status record list is empty......"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    monitor-exit v4

    .line 140
    return-void

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;"
    const-string v5, "EdmProcessHandler"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    invoke-virtual {v3}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;"
    .end local v1           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    .line 145
    sget-object v4, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 146
    :try_start_0
    sget-object v3, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 147
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;>;"
    const-string v3, "***Dumping all current request code status which ever executed***"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 149
    const-string v3, "    Status record list is empty"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    :cond_0
    monitor-exit v4

    .line 156
    return-void

    .line 151
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    invoke-virtual {v3}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;"
    .end local v1           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public execute(I)I
    .locals 2
    .parameter "requestCode"

    .prologue
    .line 47
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/server/EdmProcessHandler;->execute(IJ)I

    move-result v0

    return v0
.end method

.method public execute(IJ)I
    .locals 4
    .parameter "requestCode"
    .parameter "timeout"

    .prologue
    .line 52
    sget-object v2, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    monitor-enter v2

    .line 53
    :try_start_0
    sget-object v1, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    .line 55
    .local v0, status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    .end local v0           #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    invoke-direct {v0, p0, p1}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;-><init>(Lcom/htc/server/EdmProcessHandler;I)V

    .line 57
    .restart local v0       #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    sget-object v1, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, -0x1

    monitor-exit v2

    .line 63
    :goto_0
    return v1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/htc/server/EdmProcessHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->executing()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 64
    .end local v0           #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeNoTimeout(I)I
    .locals 4
    .parameter "requestCode"

    .prologue
    .line 81
    sget-object v2, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    monitor-enter v2

    .line 82
    :try_start_0
    sget-object v1, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    .line 84
    .local v0, status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    .end local v0           #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    invoke-direct {v0, p0, p1}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;-><init>(Lcom/htc/server/EdmProcessHandler;I)V

    .line 86
    .restart local v0       #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    sget-object v1, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, -0x1

    monitor-exit v2

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->executing()Ljava/lang/Runnable;

    .line 92
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 93
    .end local v0           #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finish(I)I
    .locals 4
    .parameter "requestCode"

    .prologue
    .line 105
    sget-object v2, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    monitor-enter v2

    .line 106
    :try_start_0
    sget-object v1, Lcom/htc/server/EdmProcessHandler;->mStatusRecords:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;

    .line 109
    .local v0, status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    monitor-exit v2

    .line 121
    :goto_0
    return v1

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 112
    iget-object v1, p0, Lcom/htc/server/EdmProcessHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->finished()V

    .line 121
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 122
    .end local v0           #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    .restart local v0       #status:Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->getStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->finishedAfterTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
