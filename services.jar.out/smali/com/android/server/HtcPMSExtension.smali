.class final Lcom/android/server/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcPMSExtension$LogRecord;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"


# instance fields
.field private mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method protected static getWakeLockFlagInfo(I)Ljava/lang/String;
    .locals 3
    .parameter "flags"

    .prologue
    .line 104
    const-string v0, ""

    .line 106
    .local v0, info:Ljava/lang/String;
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACQUIRE_CAUSES_WAKEUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    const/high16 v1, 0x2000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ON_AFTER_RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_1
    return-object v0
.end method

.method protected static getWakeLockTypeInfo(II)Ljava/lang/String;
    .locals 2
    .parameter "flags"
    .parameter "LOCK_MASK"

    .prologue
    .line 66
    const-string v0, ""

    .line 68
    .local v0, info:Ljava/lang/String;
    and-int v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    .line 100
    :goto_0
    return-object v0

    .line 70
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 71
    goto :goto_0

    .line 73
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 74
    goto :goto_0

    .line 76
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 77
    goto :goto_0

    .line 79
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 80
    goto :goto_0

    .line 82
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 83
    goto :goto_0

    .line 85
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    .line 86
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    .line 89
    goto :goto_0

    .line 91
    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    .line 92
    goto :goto_0

    .line 94
    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    .line 95
    goto :goto_0

    .line 97
    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method protected disableGC(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 184
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 188
    return-void
.end method

.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .line 171
    .local v0, recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .end local v0           #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .restart local v0       #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeScreenState(Z)V
    .locals 12
    .parameter "on"

    .prologue
    .line 116
    const-string v1, "system"

    .line 117
    .local v1, SYSTEM_PATH:Ljava/lang/String;
    const-string v0, "screen_state"

    .line 119
    .local v0, SCREEN_FILE_NAME:Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    .line 120
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const/4 v6, 0x0

    .line 124
    .local v6, out:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 127
    .local v4, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v8, systemDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "screen_state"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v3, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 131
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 134
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 135
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_2

    .line 136
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: creating screen_state file."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 139
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    .line 140
    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: screen_state created."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 145
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    .end local v6           #out:Ljava/io/FileOutputStream;
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 147
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .local v5, osw:Ljava/io/OutputStreamWriter;
    if-eqz p1, :cond_6

    :try_start_2
    const-string v9, "1"

    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 159
    if-eqz v5, :cond_e

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x0

    .line 160
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :goto_1
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/4 v6, 0x0

    .line 164
    .end local v3           #file:Ljava/io/File;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v8           #systemDir:Ljava/io/File;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_5

    .line 165
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " done."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5
    return-void

    .line 147
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :cond_6
    :try_start_5
    const-string v9, "0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 161
    :catch_0
    move-exception v9

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :goto_3
    move-object v6, v7

    .line 162
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 149
    .end local v3           #file:Ljava/io/File;
    .end local v8           #systemDir:Ljava/io/File;
    :catch_1
    move-exception v2

    .line 150
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_7

    .line 151
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: could not write to file. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 160
    :cond_8
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v6, 0x0

    goto :goto_2

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 154
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_8
    sget-boolean v9, Lcom/android/server/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_9

    .line 155
    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: exception occurred. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    :cond_9
    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 160
    :cond_a
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v6, 0x0

    goto :goto_2

    .line 158
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 159
    :goto_6
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    .line 160
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v6, 0x0

    .line 161
    :cond_c
    :goto_7
    throw v9

    :catch_3
    move-exception v10

    goto :goto_7

    .line 158
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 161
    .end local v3           #file:Ljava/io/File;
    .end local v8           #systemDir:Ljava/io/File;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto/16 :goto_2

    .line 153
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 161
    .end local v3           #file:Ljava/io/File;
    .end local v8           #systemDir:Ljava/io/File;
    .local v2, e:Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .line 149
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #systemDir:Ljava/io/File;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 161
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v9

    goto/16 :goto_3

    :cond_d
    move-object v6, v7

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    :cond_e
    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto/16 :goto_1
.end method
