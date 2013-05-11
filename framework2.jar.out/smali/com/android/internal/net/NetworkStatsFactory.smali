.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "procRoot"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 65
    return-void
.end method


# virtual methods
.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 1

    .prologue
    .line 173
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    .locals 19
    .parameter "limitUid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 185
    .local v11, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v14, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const/16 v17, 0x18

    invoke-direct/range {v14 .. v17}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 186
    .local v14, stats:Landroid/net/NetworkStats;
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 188
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    const/4 v6, 0x1

    .line 189
    .local v6, idx:I
    const/4 v7, 0x1

    .line 193
    .local v7, lastIdx:I
    const/4 v8, 0x0

    .line 194
    .local v8, lineCount:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 195
    .local v12, start:J
    const-string v15, "NetworkStatsFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readNetworkStatsDetail("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") start"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v9, 0x0

    .line 200
    .local v9, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v10, Lcom/android/internal/util/ProcFileReader;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v15}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 201
    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v10, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 203
    :goto_0
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 204
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    .line 205
    add-int/lit8 v15, v7, 0x1

    if-eq v6, v15, :cond_0

    .line 206
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "inconsistent idx="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " after lastIdx="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 229
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 230
    .end local v10           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v4, e:Ljava/lang/NullPointerException;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "problem parsing idx "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v15

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v2, v16, v12

    .line 238
    .local v2, duration:J
    const-string v16, "NetworkStatsFactory"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "readNetworkStatsDetail("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") line "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", tooks "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 241
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 237
    throw v15

    .line 209
    .end local v2           #duration:J
    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v10       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_0
    move v7, v6

    .line 211
    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 212
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v15

    iput v15, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 213
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v15

    iput v15, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 214
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v15

    iput v15, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 215
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v15

    iput-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 216
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v15

    iput-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 217
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v15

    iput-wide v15, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 218
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v15

    iput-wide v15, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 220
    const/4 v15, -0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_1

    iget v15, v5, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_2

    .line 221
    :cond_1
    invoke-virtual {v14, v5}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 224
    :cond_2
    invoke-virtual {v10}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 231
    .end local v10           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v4

    .line 232
    .local v4, e:Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_4
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "problem parsing idx "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 233
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v4

    .line 234
    .local v4, e:Ljava/io/IOException;
    :goto_4
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "problem parsing idx "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v10       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v2, v15, v12

    .line 238
    .restart local v2       #duration:J
    const-string v15, "NetworkStatsFactory"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readNetworkStatsDetail("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") line "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", tooks "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 241
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 244
    return-object v14

    .line 237
    .end local v2           #duration:J
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    goto/16 :goto_2

    .line 233
    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v10       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v4

    move-object v9, v10

    .end local v10           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 231
    .end local v9           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v10       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_4
    move-exception v4

    move-object v9, v10

    .end local v10           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v9       #reader:Lcom/android/internal/util/ProcFileReader;
    goto/16 :goto_3

    .line 229
    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 76
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 78
    .local v5, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-direct {v6, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 79
    .local v6, stats:Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 81
    .local v2, entry:Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 83
    .local v3, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v4, reader:Lcom/android/internal/util/ProcFileReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 87
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 88
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 89
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 91
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, active:Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 95
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 96
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 97
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 102
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 103
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 104
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 107
    :cond_0
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 108
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 110
    .end local v0           #active:Z
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 111
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v1, e:Ljava/lang/NullPointerException;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem parsing stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 117
    throw v7

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_1
    move v0, v7

    .line 91
    goto :goto_1

    .line 112
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem parsing stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 114
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    :goto_5
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem parsing stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 120
    return-object v6

    .line 117
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 114
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_5

    .line 112
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 110
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 134
    .local v4, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    .line 169
    :goto_0
    return-object v5

    .line 136
    :cond_0
    new-instance v5, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 137
    .local v5, stats:Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 139
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 142
    .local v2, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v3, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 145
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 147
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 148
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 149
    const/4 v6, 0x0

    iput v6, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 151
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 152
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 153
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 154
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 156
    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 157
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 160
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem parsing stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 166
    throw v6

    .line 161
    :catch_1
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem parsing stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    :goto_5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem parsing stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 167
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_0

    .line 166
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 163
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_5

    .line 161
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 159
    :catch_5
    move-exception v0

    goto :goto_2
.end method
