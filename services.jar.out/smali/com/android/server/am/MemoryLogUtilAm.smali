.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# static fields
.field static final PLATFORM_NONE:I = 0x0

.field static final PLATFORM_NV:I = 0x1

.field static final PLATFORM_QCT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemoryLogUtilAm"

.field static mPlatform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dumpLRUProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 14
    .parameter "rec"

    .prologue
    .line 67
    const-string v1, "others"

    .line 68
    .local v1, appType:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v10, :cond_5

    .line 69
    const-string v1, "htcApp"

    .line 103
    :cond_0
    :goto_0
    :try_start_0
    iget v10, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-static {v10, v11, v12, v1}, Landroid/os/Process;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, isBinded:Z
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v10, :cond_1

    .line 108
    const-string v10, "MemoryLogUtilAm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LowMemDetail: ADJ, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", adjSource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", adjTarget: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v7, 0x1

    .line 114
    :cond_1
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v11, "service"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 115
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 116
    .local v9, sr:Lcom/android/server/am/ServiceRecord;
    if-eqz v7, :cond_3

    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v9, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v3, v10, v12

    .line 121
    .local v3, duration:J
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, adjSource:Ljava/lang/String;
    :goto_2
    const-string v10, "MemoryLogUtilAm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LowMemDetail: Service, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", className: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", adjSource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", execStart: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", exectime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", createTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/android/server/am/ServiceRecord;->createTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lastActivity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", restartTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", startRequested: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", stopIfKilled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 146
    .end local v0           #adjSource:Ljava/lang/String;
    .end local v3           #duration:J
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #isBinded:Z
    .end local v9           #sr:Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v5

    .line 147
    .local v5, e:Ljava/lang/Exception;
    const-string v10, "MemoryLogUtilAm"

    const-string v11, "Error dumpLowMemoryLog"

    invoke-static {v10, v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v5           #e:Ljava/lang/Exception;
    :cond_4
    return-void

    .line 70
    :cond_5
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->gmsApp:Z

    if-eqz v10, :cond_0

    .line 71
    const-string v1, "gmsAPP"

    goto/16 :goto_0

    .line 121
    .restart local v3       #duration:J
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #isBinded:Z
    .restart local v9       #sr:Lcom/android/server/am/ServiceRecord;
    :cond_6
    :try_start_1
    const-string v0, "null"

    goto/16 :goto_2

    .line 133
    .end local v3           #duration:J
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v11, "provider"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 134
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 135
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 136
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 137
    .local v2, cpRec:Lcom/android/server/am/ContentProviderRecord;
    if-eqz v7, :cond_9

    iget-object v10, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 140
    :cond_9
    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0       #adjSource:Ljava/lang/String;
    :goto_4
    const-string v10, "MemoryLogUtilAm"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LowMemDetail: Provider, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", className: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", adjSource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 140
    .end local v0           #adjSource:Ljava/lang/String;
    :cond_a
    const-string v0, "null"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 13
    .parameter
    .parameter "TOP_APP"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, lruProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, processIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/Vector;

    .end local v6           #processIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 44
    .restart local v6       #processIDs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v8, "MemoryLogUtilAm"

    const-string v9, "LowMemDetail: dump begin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v8, "MemoryLogUtilAm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LowMemDetail: TOP_APP= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 50
    .local v7, rec:Lcom/android/server/am/ProcessRecord;
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLRUProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 51
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 54
    .end local v7           #rec:Lcom/android/server/am/ProcessRecord;
    :cond_0
    const-string v8, "/proc"

    invoke-static {v8, v12}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v5

    .line 55
    .local v5, pids:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget v3, v0, v2

    .line 56
    .local v3, id:I
    if-eq v3, v11, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 57
    const-string v8, "natvie"

    const-string v9, "none"

    invoke-static {v3, v12, v8, v9}, Landroid/os/Process;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    .end local v3           #id:I
    :cond_2
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()V

    .line 61
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpNVMapLog()V

    .line 62
    const-string v8, "MemoryLogUtilAm"

    const-string v9, "LowMemDetail: dump end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method static dumpMemInfo()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x400

    .line 152
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 153
    .local v0, mMemInfoReader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 154
    const-string v1, "MemoryLogUtilAm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Free, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getBufferSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Buffers, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Cached, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getShmemSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Shmem, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSlabSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Slab, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKernelStack()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KernelStack, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getPageTable()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB PageTable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method static dumpNVAllocationLog()V
    .locals 22

    .prologue
    .line 189
    sget v19, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 256
    .local v2, NVMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v5, input:Ljava/io/BufferedReader;
    .local v7, isFirst:Z
    .local v10, line:Ljava/lang/String;
    .local v12, nvmapFile:Ljava/io/File;
    .local v13, pid:I
    .local v14, processName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 192
    .end local v2           #NVMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5           #input:Ljava/io/BufferedReader;
    .end local v7           #isFirst:Z
    .end local v10           #line:Ljava/lang/String;
    .end local v12           #nvmapFile:Ljava/io/File;
    .end local v13           #pid:I
    .end local v14           #processName:Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/io/File;

    const-string v19, "/sys/kernel/debug/nvmap/iovmm/allocations"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v12       #nvmapFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 194
    .restart local v5       #input:Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 195
    .restart local v10       #line:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 196
    .restart local v2       #NVMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v7, 0x1

    .line 197
    .restart local v7       #isFirst:Z
    const/4 v13, 0x0

    .line 198
    .restart local v13       #pid:I
    const-string v14, ""

    .line 201
    .restart local v14       #processName:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 202
    .end local v5           #input:Ljava/io/BufferedReader;
    .local v6, input:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 203
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\\s+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, strs:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 206
    const/16 v19, 0x2

    aget-object v19, v15, v19

    const-string v20, "PID"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 208
    const/16 v19, 0x0

    aget-object v19, v15, v19

    const-string v20, "total"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 209
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 210
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 211
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 212
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v20, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 251
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v15           #strs:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 252
    .end local v6           #input:Ljava/io/BufferedReader;
    .local v3, e:Ljava/lang/Exception;
    .restart local v5       #input:Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v19, "MemoryLogUtilAm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error logging mvmap allocation file "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v19

    goto/16 :goto_0

    .line 215
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v6       #input:Ljava/io/BufferedReader;
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v15       #strs:[Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v19, "MemoryLogUtilAm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, Total: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v21, v15, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 254
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v15           #strs:[Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    move-object v5, v6

    .line 255
    .end local v6           #input:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 218
    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v6       #input:Ljava/io/BufferedReader;
    .restart local v15       #strs:[Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    :try_start_6
    aget-object v19, v15, v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 219
    if-nez v7, :cond_8

    .line 220
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 221
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 222
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 223
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v20, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 254
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v15           #strs:[Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object v5, v6

    .end local v6           #input:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    :goto_6
    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_7
    throw v19

    .line 226
    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v6       #input:Ljava/io/BufferedReader;
    .restart local v15       #strs:[Ljava/lang/String;
    :cond_8
    :try_start_8
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 227
    const/16 v19, 0x1

    aget-object v14, v15, v19

    .line 228
    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 229
    const/16 v19, 0x3

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 230
    .local v17, value:I
    const-string v19, "MemoryLogUtilAm"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LowMemDetail: NVMapInfo, processName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", total: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v7, 0x0

    .line 232
    goto/16 :goto_1

    .line 233
    .end local v17           #value:I
    :cond_9
    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 235
    .local v17, value:J
    const-string v16, ""

    .line 236
    .local v16, typeKey:Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .line 237
    .local v9, length:I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    .line 238
    const-string v16, "0"

    .line 243
    :goto_8
    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 244
    .local v11, mapValue:Ljava/lang/Long;
    if-nez v11, :cond_b

    .line 245
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 240
    .end local v11           #mapValue:Ljava/lang/Long;
    :cond_a
    const/16 v19, 0x2

    aget-object v19, v15, v19

    const/16 v20, 0x0

    add-int/lit8 v21, v9, -0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_8

    .line 247
    .restart local v11       #mapValue:Ljava/lang/Long;
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v19, v19, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 254
    .end local v6           #input:Ljava/io/BufferedReader;
    .end local v9           #length:I
    .end local v11           #mapValue:Ljava/lang/Long;
    .end local v15           #strs:[Ljava/lang/String;
    .end local v16           #typeKey:Ljava/lang/String;
    .end local v17           #value:J
    .restart local v5       #input:Ljava/io/BufferedReader;
    :catch_2
    move-exception v20

    goto/16 :goto_7

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v6       #input:Ljava/io/BufferedReader;
    :catch_3
    move-exception v19

    goto/16 :goto_4

    .end local v6           #input:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    goto/16 :goto_6

    .line 251
    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method static dumpNVMapLog()V
    .locals 8

    .prologue
    .line 166
    sget v5, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 167
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v4, nvmapFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 169
    .local v1, input:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 172
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 173
    .end local v1           #input:Ljava/io/BufferedReader;
    .local v2, input:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 174
    const-string v5, "MemoryLogUtilAm"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 177
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #input:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "MemoryLogUtilAm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging mvmap file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpNVAllocationLog()V

    .line 186
    :cond_1
    return-void

    .line 179
    .end local v1           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    move-object v1, v2

    .line 180
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v1       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .line 179
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_5
    throw v5

    :catch_1
    move-exception v6

    goto :goto_5

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v1       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 176
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static init()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, nvmapFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method
