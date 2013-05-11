.class public Lcom/android/server/am/HtcErrorReportManager;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"


# static fields
.field static SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter; = null

.field public static final SYSTEM_CRASH_ENTRY:Ljava/lang/String; = "/data/system/last_crash_msg"

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final htcDebugFlag:Z


# instance fields
.field final mContext:Landroid/content/Context;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    .line 92
    new-instance v0, Lcom/android/server/am/HtcErrorReportManager$1;

    invoke-direct {v0}, Lcom/android/server/am/HtcErrorReportManager$1;-><init>()V

    sput-object v0, Lcom/android/server/am/HtcErrorReportManager;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0
    .parameter "service"
    .parameter "context"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    iput-object p2, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/OutputStreamWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->writeKernelLog(Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->getClassFromHtcFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/HtcErrorReportManager;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->notifyUploadRosieDied(Landroid/content/Intent;)V

    return-void
.end method

.method private final createAppErrorIntentForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "proc"
    .parameter "eventType"

    .prologue
    .line 521
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/HtcErrorReportManager;->generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, dropboxTag:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorReportForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/ApplicationErrorReport;

    move-result-object v1

    .line 524
    .local v1, report:Landroid/app/ApplicationErrorReport;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v2, result:Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 526
    const-string v3, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 529
    const-string v3, "isM10Process"

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Landroid/os/Debug;->native_IsM10Process(I)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    .end local v0           #dropboxTag:Ljava/lang/String;
    .end local v1           #report:Landroid/app/ApplicationErrorReport;
    .end local v2           #result:Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createAppErrorReportForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .parameter "r"
    .parameter "dropboxTag"

    .prologue
    .line 581
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 582
    .local v0, report:Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 583
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 584
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 585
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->errorOccurTime:J

    iput-wide v1, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 586
    iput-object p2, v0, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    .line 587
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 588
    return-object v0

    .line 587
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .parameter "txt"

    .prologue
    .line 628
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v3, entry:Ljava/io/File;
    const/4 v5, 0x0

    .line 630
    .local v5, writer:Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 633
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_0

    .line 634
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 636
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 637
    const/4 v3, 0x0

    .line 638
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 639
    .end local v3           #entry:Ljava/io/File;
    .local v4, entry:Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 641
    .end local v4           #entry:Ljava/io/File;
    .restart local v3       #entry:Ljava/io/File;
    :cond_0
    const/16 v7, 0x1b6

    const/4 v8, -0x1

    const/4 v9, -0x1

    :try_start_3
    invoke-static {p1, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 642
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 643
    .end local v5           #writer:Ljava/io/FileWriter;
    .local v6, writer:Ljava/io/FileWriter;
    :try_start_4
    invoke-virtual {v6, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 649
    if-eqz v0, :cond_1

    .line 650
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 651
    :cond_1
    if-eqz v6, :cond_2

    .line 652
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_0
    move-object v5, v6

    .line 656
    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :cond_3
    :goto_1
    return-void

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v7, "ActivityManager"

    const-string v8, "Error in storing log entry message"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 649
    if-eqz v0, :cond_4

    .line 650
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 651
    :cond_4
    if-eqz v5, :cond_3

    .line 652
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 653
    :catch_1
    move-exception v7

    goto :goto_1

    .line 648
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 649
    :goto_3
    if-eqz v0, :cond_5

    .line 650
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 651
    :cond_5
    if-eqz v5, :cond_6

    .line 652
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 648
    :cond_6
    :goto_4
    throw v7

    .line 653
    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 648
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #entry:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #entry:Ljava/io/File;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #entry:Ljava/io/File;
    .restart local v3       #entry:Ljava/io/File;
    goto :goto_3

    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catchall_3
    move-exception v7

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 645
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #entry:Ljava/io/File;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #entry:Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #entry:Ljava/io/File;
    .restart local v3       #entry:Ljava/io/File;
    goto :goto_2

    .end local v5           #writer:Ljava/io/FileWriter;
    .restart local v6       #writer:Ljava/io/FileWriter;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #writer:Ljava/io/FileWriter;
    .restart local v5       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private static dumpFD(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 9
    .parameter "command"
    .parameter "writer"

    .prologue
    .line 753
    const/4 v4, 0x0

    .line 754
    .local v4, process:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 756
    .local v2, output:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 757
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 758
    .end local v2           #output:Ljava/io/DataOutputStream;
    .local v3, output:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 759
    const-string v6, "exit\n"

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 763
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 766
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 769
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ActivityManager"

    const-string v7, "Dump FD failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 773
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 776
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 782
    if-eqz v3, :cond_0

    .line 783
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 789
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 790
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_1
    :goto_3
    move-object v2, v3

    .line 796
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :cond_2
    :goto_4
    return-void

    .line 773
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 777
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 778
    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_5
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dump FD failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 779
    :goto_6
    :try_start_9
    const-string v6, "ActivityManager"

    const-string v7, "Dump FD failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 782
    if-eqz v2, :cond_3

    .line 783
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 789
    :cond_3
    :goto_7
    if-eqz v4, :cond_2

    .line 790
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 792
    :catch_2
    move-exception v0

    .line 793
    const-string v6, "ActivityManager"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 781
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 782
    :goto_8
    if-eqz v2, :cond_4

    .line 783
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 789
    :cond_4
    :goto_9
    if-eqz v4, :cond_5

    .line 790
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 781
    :cond_5
    :goto_a
    throw v6

    .line 785
    :catch_3
    move-exception v0

    .line 786
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 792
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 793
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 785
    :catch_5
    move-exception v0

    .line 786
    const-string v6, "ActivityManager"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 785
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .line 786
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 792
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 793
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 773
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #line:Ljava/lang/String;
    :cond_6
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_1

    .line 781
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    goto :goto_8

    .line 778
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v6

    goto :goto_6

    .line 777
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v0

    goto/16 :goto_5
.end method

.method private generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "process"

    .prologue
    .line 593
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_3

    .line 594
    :cond_0
    const-string v0, "crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    :cond_1
    const-string v0, "SYSTEM_CRASH"

    .line 601
    :goto_0
    return-object v0

    .line 597
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 598
    :cond_3
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->isRosieProcess:Z

    if-eqz v0, :cond_5

    const-string v0, "crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rosie_died"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dying_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "native_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    :cond_4
    const-string v0, "HTC_ROSIE_DIED"

    goto :goto_0

    .line 601
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_APP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getClassFromHtcFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 606
    const/4 v2, 0x0

    .line 608
    .local v2, mClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 609
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 611
    .local v3, newContext:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 612
    .local v1, loader:Ljava/lang/ClassLoader;
    const/4 v4, 0x1

    invoke-static {p2, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 624
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .end local v3           #newContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v2

    .line 614
    :cond_1
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    .line 615
    const-string v4, "ActivityManager"

    const-string v5, "context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package name fot found - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package name fot found - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v5, "other exception - "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final getProcessRecordFromPid(I)Lcom/android/server/am/ProcessRecord;
    .locals 5
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 536
    if-gez p1, :cond_0

    move-object v0, v2

    .line 546
    :goto_0
    return-object v0

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 540
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 541
    iget-object v4, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 542
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_1

    .line 543
    monitor-exit v3

    goto :goto_0

    .line 547
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 540
    .restart local v0       #app:Lcom/android/server/am/ProcessRecord;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 546
    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method private logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 12
    .parameter "processBuilder"
    .parameter "writer"
    .parameter "lines"
    .parameter "needPrintExceptionToLogfile"

    .prologue
    .line 698
    const/4 v3, 0x0

    .line 699
    .local v3, input:Ljava/io/BufferedReader;
    if-nez p3, :cond_1

    const/4 v7, 0x0

    .line 700
    .local v7, queue:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_0
    const/4 v5, 0x0

    .line 701
    .local v5, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 703
    .local v0, count:I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v6

    .line 705
    .local v6, process:Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 706
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 707
    :goto_2
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 709
    .end local v3           #input:Ljava/io/BufferedReader;
    .local v4, input:Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 710
    if-eqz v7, :cond_2

    .line 711
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v9

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 712
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 713
    .local v8, tmp:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v0, v9

    .line 715
    .end local v8           #tmp:Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v9

    add-int/2addr v0, v9

    goto :goto_3

    .line 699
    .end local v0           #count:I
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #process:Ljava/lang/Process;
    .end local v7           #queue:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local v3       #input:Ljava/io/BufferedReader;
    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 718
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #process:Ljava/lang/Process;
    .restart local v7       #queue:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 729
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 731
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :goto_4
    if-eqz p4, :cond_3

    .line 732
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 733
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ls -l /proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/fd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/server/am/HtcErrorReportManager;->dumpFD(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 740
    :cond_3
    :goto_5
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 744
    :goto_6
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 746
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :goto_7
    return-void

    .line 721
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :cond_5
    if-nez v7, :cond_7

    .line 722
    :try_start_9
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 740
    :try_start_a
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 744
    :goto_8
    if-eqz v4, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_9
    move-object v3, v4

    .line 723
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto :goto_7

    .line 726
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    :cond_7
    :goto_a
    :try_start_c
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 727
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_a

    .line 739
    :catchall_0
    move-exception v9

    move-object v3, v4

    .line 740
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :goto_b
    :try_start_d
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 744
    :goto_c
    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 739
    :cond_8
    :goto_d
    throw v9

    .line 740
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :cond_9
    :try_start_f
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 744
    :goto_e
    if-eqz v4, :cond_a

    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_a
    :goto_f
    move-object v3, v4

    .line 745
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto :goto_7

    .line 735
    .end local v6           #process:Ljava/lang/Process;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 736
    .local v2, e1:Ljava/lang/Exception;
    :try_start_11
    const-string v9, "ActivityManager"

    const-string v10, "Error running process"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    .line 739
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e1:Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    goto :goto_b

    .line 741
    :catch_2
    move-exception v2

    .line 742
    .local v2, e1:Ljava/io/IOException;
    const-string v10, "ActivityManager"

    const-string v11, "flush exception"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 744
    .end local v2           #e1:Ljava/io/IOException;
    :catch_3
    move-exception v10

    goto :goto_d

    .line 741
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 742
    .restart local v2       #e1:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 744
    .end local v2           #e1:Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 741
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :catch_6
    move-exception v2

    .line 742
    .restart local v2       #e1:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 744
    .end local v2           #e1:Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_9

    .line 741
    :catch_8
    move-exception v2

    .line 742
    .restart local v2       #e1:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 744
    .end local v2           #e1:Ljava/io/IOException;
    :catch_9
    move-exception v9

    goto :goto_f

    .line 729
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_a
    move-exception v1

    goto/16 :goto_4

    .line 706
    .restart local v6       #process:Ljava/lang/Process;
    :catch_b
    move-exception v9

    goto/16 :goto_2

    .line 705
    :catch_c
    move-exception v9

    goto/16 :goto_1
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 8
    .parameter "file"
    .parameter "writer"

    .prologue
    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, input:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 684
    .local v4, line:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 685
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 686
    .local v0, count:I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 691
    .end local v0           #count:I
    .end local v3           #input:Ljava/io/BufferedReader;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 695
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 689
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 693
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    move-object v2, v3

    .line 694
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .line 693
    .end local v0           #count:I
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_5
    throw v5

    :catch_1
    move-exception v6

    goto :goto_5

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 690
    .end local v0           #count:I
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 8
    .parameter "file"
    .parameter "writer"
    .parameter "lines"

    .prologue
    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, input:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 661
    .local v4, line:Ljava/lang/String;
    if-nez p3, :cond_4

    const/16 v5, 0x800

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 663
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 665
    .local v0, count:I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 667
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 668
    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-virtual {p2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 672
    :cond_1
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 676
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v2, v3

    .line 678
    .end local v0           #count:I
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-void

    .line 661
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 676
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_5
    throw v5

    :catch_2
    move-exception v6

    goto :goto_5

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v0       #count:I
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 673
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private notifyUploadRosieDied(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 471
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v7, "ActivityManager"

    const-string v8, "notifyUploadRosieDied"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v4, 0x0

    .line 475
    .local v4, tag:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 476
    .local v5, time:J
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.BUGREPORT"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, reportIntent:Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 478
    const-string v7, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationErrorReport;

    .line 479
    .local v2, report:Landroid/app/ApplicationErrorReport;
    iget-object v4, v2, Landroid/app/ApplicationErrorReport;->dropboxTag:Ljava/lang/String;

    .line 480
    iget-wide v5, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, entry:Landroid/os/DropBoxManager$Entry;
    iget-object v7, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 483
    .local v0, dbox:Landroid/os/DropBoxManager;
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v1

    .line 484
    if-nez v1, :cond_2

    .line 485
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot get entry from dbox, skip. tag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_2
    const-string v7, "fromDropBox"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    if-eqz v1, :cond_3

    .line 490
    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 492
    :cond_3
    const-string v7, "tag"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v7, "time"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 494
    iget-object v7, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v8, "com.htc.permission.FEEDBACK_PROTECT"

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 495
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send intent tag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v7, "ActivityManager"

    const-string v8, "send rosiedied broadcast to reportagent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private writeKernelLog(Ljava/io/OutputStreamWriter;)V
    .locals 12
    .parameter "writer"

    .prologue
    .line 418
    const/4 v7, 0x0

    .line 419
    .local v7, localSocket:Landroid/net/LocalSocket;
    const/4 v3, 0x0

    .line 420
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 421
    .local v6, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 423
    .local v0, fd:Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 425
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .local v8, localSocket:Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v9, 0x5

    if-ge v1, v9, :cond_0

    .line 426
    :try_start_1
    new-instance v9, Landroid/net/LocalSocketAddress;

    const-string v10, "htc_dk"

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v9, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v8, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 427
    invoke-virtual {v8}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 432
    :cond_0
    invoke-virtual {v8}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v9

    if-nez v9, :cond_5

    .line 433
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Cannot connect to socket!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c

    .line 452
    if-eqz v3, :cond_1

    .line 454
    :try_start_2
    throw v3

    .line 455
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_1

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close input stream success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 458
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 460
    :try_start_3
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 461
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_2

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close localSocket success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :cond_2
    :goto_2
    move-object v7, v8

    .line 465
    .end local v1           #i:I
    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    :cond_3
    :goto_3
    return-void

    .line 429
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v1       #i:I
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :cond_4
    :try_start_4
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Connect socket fail, wait 1 second..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_5
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_6

    .line 438
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 439
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[writeKernelLog] Connect!, fd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c

    .line 443
    .end local v3           #input:Ljava/io/BufferedReader;
    .local v4, input:Ljava/io/BufferedReader;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_d

    goto :goto_4

    .line 447
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 448
    .end local v1           #i:I
    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .local v5, ioe:Ljava/io/IOException;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    :goto_5
    :try_start_6
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 452
    if-eqz v3, :cond_7

    .line 454
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 455
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_7

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close input stream success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 458
    :cond_7
    :goto_6
    if-eqz v7, :cond_3

    .line 460
    :try_start_8
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    .line 461
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close localSocket success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 462
    :catch_1
    move-exception v5

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    :goto_7
    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 446
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v1       #i:I
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :cond_8
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_d

    .line 452
    if-eqz v4, :cond_9

    .line 454
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 455
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_9

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close input stream success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 458
    :cond_9
    :goto_8
    if-eqz v8, :cond_a

    .line 460
    :try_start_b
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 461
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_a

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close localSocket success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :cond_a
    :goto_9
    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 464
    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    goto/16 :goto_3

    .line 449
    .end local v1           #i:I
    :catch_2
    move-exception v2

    .line 450
    .local v2, ie:Ljava/lang/InterruptedException;
    :goto_a
    :try_start_c
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 452
    if-eqz v3, :cond_b

    .line 454
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 455
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_b

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close input stream success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 458
    :cond_b
    :goto_b
    if-eqz v7, :cond_3

    .line 460
    :try_start_e
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    .line 461
    sget-boolean v9, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog] Close localSocket success!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_3

    .line 462
    :catch_3
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    goto :goto_7

    .line 452
    .end local v2           #ie:Ljava/lang/InterruptedException;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_c
    if-eqz v3, :cond_c

    .line 454
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 455
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_c

    const-string v10, "ActivityManager"

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 458
    :cond_c
    :goto_d
    if-eqz v7, :cond_d

    .line 460
    :try_start_10
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V

    .line 461
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_d

    const-string v10, "ActivityManager"

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 452
    :cond_d
    :goto_e
    throw v9

    .line 456
    :catch_4
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v10, "ActivityManager"

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 462
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v10, "ActivityManager"

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 456
    :catch_6
    move-exception v5

    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v2       #ie:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .end local v2           #ie:Ljava/lang/InterruptedException;
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v1       #i:I
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :catch_8
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 462
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 456
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v4       #input:Ljava/io/BufferedReader;
    :catch_a
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 462
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_b
    move-exception v5

    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "ActivityManager"

    const-string v10, "[writeKernelLog]"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 452
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    goto :goto_c

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    goto :goto_c

    .line 449
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :catch_c
    move-exception v2

    move-object v7, v8

    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    goto/16 :goto_a

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    goto/16 :goto_a

    .line 447
    .end local v1           #i:I
    :catch_e
    move-exception v5

    goto/16 :goto_5

    .end local v7           #localSocket:Landroid/net/LocalSocket;
    .restart local v1       #i:I
    .restart local v8       #localSocket:Landroid/net/LocalSocket;
    :catch_f
    move-exception v5

    move-object v7, v8

    .end local v8           #localSocket:Landroid/net/LocalSocket;
    .restart local v7       #localSocket:Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method


# virtual methods
.method public addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 33
    .parameter "eventType"
    .parameter "process"
    .parameter "activity"
    .parameter "parent"
    .parameter "subject"
    .parameter "report"
    .parameter "logFile"
    .parameter "crashInfo"

    .prologue
    .line 109
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "ActivityManager"

    const-string v7, "Begin---add error logs to dropbox"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v7, :cond_3

    :cond_1
    const/4 v11, 0x1

    .line 117
    .local v11, isSystemServer:Z
    :goto_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/HtcErrorReportManager;->generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, dropboxTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v7, "dropbox"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/DropBoxManager;

    .line 122
    .local v12, dbox:Landroid/os/DropBoxManager;
    if-eqz v12, :cond_2

    invoke-virtual {v12, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 410
    :cond_2
    :goto_1
    return-void

    .line 113
    .end local v5           #dropboxTag:Ljava/lang/String;
    .end local v11           #isSystemServer:Z
    .end local v12           #dbox:Landroid/os/DropBoxManager;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 125
    .restart local v5       #dropboxTag:Ljava/lang/String;
    .restart local v11       #isSystemServer:Z
    .restart local v12       #dbox:Landroid/os/DropBoxManager;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 127
    .local v20, entryTime:J
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v4, "Type: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v7, :cond_11

    .line 130
    :cond_5
    const-string v4, "Process: system_server\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :goto_2
    const-string v4, "Time: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v4, "Device Active Time: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-virtual {v7}, Lcom/htc/server/HtcDeviceInfoManager;->getDeviceAliveTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    if-eqz p2, :cond_b

    .line 138
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->errorTag:Ljava/lang/String;

    .line 139
    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/server/am/ProcessRecord;->errorOccurTime:J

    .line 141
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    .line 142
    .local v22, flags:I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v30

    .line 143
    .local v30, pm:Landroid/content/pm/IPackageManager;
    const-string v4, "Flags: 0x"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x10

    move/from16 v0, v22

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :try_start_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 146
    .local v29, pkg:Ljava/lang/String;
    const-string v4, "Package: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/UserId;->myUserId()I

    move-result v7

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v4, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v28

    .line 149
    .local v28, pi:Landroid/content/pm/PackageInfo;
    if-eqz v28, :cond_6

    .line 150
    const-string v4, " v"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v7, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 152
    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v28           #pi:Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_4
    :try_start_2
    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 160
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v29           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 161
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v7, "Error in get Package:"

    move-object/from16 v0, v19

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v19           #e:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_14

    .line 164
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_12

    .line 165
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_8
    :goto_5
    and-int/lit8 v4, v22, 0x1

    if-eqz v4, :cond_9

    .line 192
    const-string v4, "System App: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v4, v22, 0x1

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_9
    :try_start_3
    const-string v4, "Installed By: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 200
    :goto_7
    const-string v4, "anr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "crash"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 201
    :cond_a
    const-string v4, "App Active Time: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHtcDeviceInfoManager:Lcom/htc/server/HtcDeviceInfoManager;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/server/HtcDeviceInfoManager;->getAppAliveTime(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .end local v22           #flags:I
    .end local v30           #pm:Landroid/content/pm/IPackageManager;
    :cond_b
    if-eqz p3, :cond_c

    .line 205
    const-string v4, "Activity: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_c
    if-eqz p4, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v4, v7, :cond_d

    .line 208
    const-string v4, "Parent-Process: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_d
    if-eqz p4, :cond_e

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_e

    .line 211
    const-string v4, "Parent-Activity: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_e
    if-eqz p5, :cond_f

    .line 214
    const-string v4, "Subject: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_f
    const-string v4, "Build: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v4, "Project Branch: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.build.project"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v4, "Changelist: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.build.changelist"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v4, "Release: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v4, "Number of hibernations: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "sys.shutdown.resume.count"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v4, "Time of resume from hibernation: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "sys.shutdown.resume.timestamp"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, "Bootloader: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.bootloader"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "Radio: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "ro.baseband"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v4

    if-nez v4, :cond_18

    .line 227
    const-string v4, "Network: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "gsm.operator.alpha"

    const-string v8, "unknown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v15

    .line 230
    .local v15, accountMgr:Landroid/accounts/AccountManagerService;
    if-eqz v15, :cond_18

    .line 231
    const-string v4, "com.htc.android.mail.eas"

    invoke-virtual {v15, v4}, Landroid/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v16

    .line 232
    .local v16, accounts:[Landroid/accounts/Account;
    if-eqz v16, :cond_16

    .line 233
    move-object/from16 v17, v16

    .local v17, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    aget-object v14, v17, v23

    .line 234
    .local v14, account:Landroid/accounts/Account;
    if-eqz v14, :cond_10

    .line 235
    const-string v4, "Account: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_10
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 132
    .end local v14           #account:Landroid/accounts/Account;
    .end local v15           #accountMgr:Landroid/accounts/AccountManagerService;
    .end local v16           #accounts:[Landroid/accounts/Account;
    .end local v17           #arr$:[Landroid/accounts/Account;
    .end local v23           #i$:I
    .end local v26           #len$:I
    :cond_11
    const-string v4, "Process: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 155
    .restart local v22       #flags:I
    .local v23, i$:Ljava/util/Iterator;
    .restart local v29       #pkg:Ljava/lang/String;
    .restart local v30       #pm:Landroid/content/pm/IPackageManager;
    :catch_1
    move-exception v19

    .line 156
    .local v19, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting package info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 167
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v29           #pkg:Ljava/lang/String;
    :cond_12
    const/16 v27, 0x0

    .line 169
    .local v27, packageContext:Landroid/content/Context;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v27

    .line 170
    if-eqz v27, :cond_8

    .line 171
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 172
    .local v31, resources:Landroid/content/res/Resources;
    new-instance v18, Landroid/content/res/Configuration;

    invoke-direct/range {v18 .. v18}, Landroid/content/res/Configuration;-><init>()V

    .line 173
    .local v18, configuration:Landroid/content/res/Configuration;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 174
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 175
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 176
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v4, :cond_13

    .line 177
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 178
    .local v25, label:Ljava/lang/String;
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_5

    .line 183
    .end local v18           #configuration:Landroid/content/res/Configuration;
    .end local v25           #label:Ljava/lang/String;
    .end local v31           #resources:Landroid/content/res/Resources;
    :catch_2
    move-exception v19

    .line 184
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting package label: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<ERROR>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 180
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v18       #configuration:Landroid/content/res/Configuration;
    .restart local v31       #resources:Landroid/content/res/Resources;
    :cond_13
    :try_start_6
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<UNKOWN>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    .line 189
    .end local v18           #configuration:Landroid/content/res/Configuration;
    .end local v27           #packageContext:Landroid/content/Context;
    .end local v31           #resources:Landroid/content/res/Resources;
    :cond_14
    const-string v4, "Application Label: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<MULTIPLE_PACKAGE>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 192
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 195
    :catch_3
    move-exception v19

    .line 196
    .local v19, e:Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting installer package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 197
    .end local v19           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v19

    .line 198
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting installer package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 238
    .end local v19           #e:Ljava/lang/Exception;
    .end local v22           #flags:I
    .end local v30           #pm:Landroid/content/pm/IPackageManager;
    .restart local v15       #accountMgr:Landroid/accounts/AccountManagerService;
    .restart local v16       #accounts:[Landroid/accounts/Account;
    :cond_16
    const-string v4, "com.google"

    invoke-virtual {v15, v4}, Landroid/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v16

    .line 239
    if-eqz v16, :cond_18

    .line 240
    move-object/from16 v17, v16

    .restart local v17       #arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_9
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    aget-object v14, v17, v23

    .line 241
    .restart local v14       #account:Landroid/accounts/Account;
    if-eqz v14, :cond_17

    .line 242
    const-string v4, "Account: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_17
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 253
    .end local v14           #account:Landroid/accounts/Account;
    .end local v15           #accountMgr:Landroid/accounts/AccountManagerService;
    .end local v16           #accounts:[Landroid/accounts/Account;
    .end local v17           #arr$:[Landroid/accounts/Account;
    .end local v23           #i$:I
    .end local v26           #len$:I
    :cond_18
    if-eqz p2, :cond_19

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v7, :cond_1c

    :cond_19
    const/16 v24, 0x1

    .line 256
    .local v24, isNeedRunBySelf:Z
    :goto_a
    const/16 v32, 0x0

    .line 257
    .local v32, result:Landroid/content/Intent;
    if-eqz p2, :cond_1b

    const-string v4, "rosie_died"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "dying_provider"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 258
    :cond_1a
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorIntentForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    .line 262
    :cond_1b
    move-object/from16 v13, v32

    .line 267
    .local v13, rosieDiedIntent:Landroid/content/Intent;
    new-instance v3, Lcom/android/server/am/HtcErrorReportManager$2;

    move-object/from16 v4, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p1

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/am/HtcErrorReportManager$2;-><init>(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;Landroid/content/Intent;)V

    .line 405
    .local v3, worker:Ljava/lang/Runnable;
    if-eqz v24, :cond_1e

    .line 406
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 253
    .end local v3           #worker:Ljava/lang/Runnable;
    .end local v13           #rosieDiedIntent:Landroid/content/Intent;
    .end local v24           #isNeedRunBySelf:Z
    .end local v32           #result:Landroid/content/Intent;
    :cond_1c
    const/16 v24, 0x0

    goto :goto_a

    .line 258
    .restart local v24       #isNeedRunBySelf:Z
    .restart local v32       #result:Landroid/content/Intent;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    invoke-static {v4, v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_b

    .line 408
    .restart local v3       #worker:Ljava/lang/Runnable;
    .restart local v13       #rosieDiedIntent:Landroid/content/Intent;
    :cond_1e
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dump: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method

.method public createAppErrorReportForHTCLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 3
    .parameter "r"
    .parameter "timeMillis"
    .parameter "crashInfo"

    .prologue
    const/4 v0, 0x0

    .line 553
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-object v0

    .line 557
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_0

    .line 561
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorTag:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorReportForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 563
    .local v0, report:Landroid/app/ApplicationErrorReport;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v1, :cond_3

    .line 564
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 565
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    goto :goto_0

    .line 566
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_0

    .line 567
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 568
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 569
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 571
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 572
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_0
.end method

.method public final handleApplicationNativeCrash(ILjava/lang/String;)V
    .locals 10
    .parameter "pid"
    .parameter "tombstoneFile"

    .prologue
    const/4 v3, 0x0

    .line 502
    const-string v0, "ActivityManager"

    const-string v1, "dump AP native crash (only for Rosie and Browser)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->getProcessRecordFromPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 504
    .local v2, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const-string v1, "native_crash"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 506
    iget-object v0, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    invoke-static {v0, v1, v3, v4}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 508
    const-string v0, "native_crash"

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/HtcErrorReportManager;->createAppErrorIntentForHTC(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 509
    .local v9, result:Landroid/content/Intent;
    if-eqz v9, :cond_0

    .line 510
    const-string v0, "extra"

    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.feedback"

    const-string v3, "com.htc.feedback.FeedbackReceiver"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    .end local v9           #result:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleApplicationNativeCrash: proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not handled"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEnableHTCErrorReport(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .parameter "proc"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableErrorRport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "ActivityManager"

    const-string v2, "Disable Error Report by local property (profiler.force_disable_err_rpt=0)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_htc_error_report"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 77
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ActivityManager"

    const-string v2, "Disable Error Report by uncheck error report"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_2
    if-eqz p1, :cond_3

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p0, Lcom/android/server/am/HtcErrorReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v2, v3, :cond_5

    .line 84
    :cond_3
    sget-boolean v1, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v1, :cond_4

    .line 85
    const-string v1, "ActivityManager"

    const-string v2, "Enable Error Report by system server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v0

    .line 86
    goto :goto_0

    .line 89
    :cond_5
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isDirty:Z

    if-nez v2, :cond_6

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
