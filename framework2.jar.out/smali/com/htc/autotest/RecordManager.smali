.class Lcom/htc/autotest/RecordManager;
.super Ljava/lang/Object;
.source "Recorder.java"


# static fields
.field private static final RECORD_ENGINE_APK_PATH:Ljava/lang/String; = "/data/misc/InsHookEvtListener.apk"

.field private static final RECORD_ENGINE_CLS:Ljava/lang/String; = "com.htc.autotest.dlib.RecordEngine"

.field private static final RECORD_ENGINE_DEX_PATH:Ljava/lang/String; = "/data/dalvik-cache/data@misc@InsHookEvtListener.apk@classes.dex"

.field static final TAG:Ljava/lang/String; = "ATRecorder"

.field private static sInstance:Lcom/htc/autotest/RecordManager;


# instance fields
.field private aTRunRecorder:Lcom/htc/autotest/MethodReflection;

.field private aTdumpShowActivity:Lcom/htc/autotest/MethodReflection;

.field private aTdumpShowDialog:Lcom/htc/autotest/MethodReflection;

.field private aTdumpShowMenu:Lcom/htc/autotest/MethodReflection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/autotest/RecordManager;->sInstance:Lcom/htc/autotest/RecordManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTRunRecorder:Lcom/htc/autotest/MethodReflection;

    .line 52
    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowDialog:Lcom/htc/autotest/MethodReflection;

    .line 53
    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowActivity:Lcom/htc/autotest/MethodReflection;

    .line 54
    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowMenu:Lcom/htc/autotest/MethodReflection;

    .line 63
    :try_start_0
    const-string v8, "ro.secure"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, secure:Ljava/lang/String;
    const-string v8, "ro.debuggable"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, debuggable:Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    const-string v8, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 110
    .end local v1           #debuggable:Ljava/lang/String;
    .end local v5           #secure:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v1       #debuggable:Ljava/lang/String;
    .restart local v5       #secure:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/misc/InsHookEvtListener.apk"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, srEngineAPK:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 75
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/dalvik-cache/data@misc@InsHookEvtListener.apk@classes.dex"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v7, srEngineDex:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 82
    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 86
    .local v0, clsLoader:Ljava/lang/ClassLoader;
    :goto_1
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v8, "/data/misc/InsHookEvtListener.apk"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 88
    .local v3, loader:Ldalvik/system/PathClassLoader;
    const-string v8, "com.htc.autotest.dlib.RecordEngine"

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 90
    .local v4, recorderEngine:Ljava/lang/Class;
    if-nez v4, :cond_3

    .line 91
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "RecordEngine does not exist"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0           #clsLoader:Ljava/lang/ClassLoader;
    .end local v1           #debuggable:Ljava/lang/String;
    .end local v3           #loader:Ldalvik/system/PathClassLoader;
    .end local v4           #recorderEngine:Ljava/lang/Class;
    .end local v5           #secure:Ljava/lang/String;
    .end local v6           #srEngineAPK:Ljava/io/File;
    .end local v7           #srEngineDex:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 108
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ATRecorder"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #debuggable:Ljava/lang/String;
    .restart local v5       #secure:Ljava/lang/String;
    .restart local v6       #srEngineAPK:Ljava/io/File;
    .restart local v7       #srEngineDex:Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 94
    .restart local v0       #clsLoader:Ljava/lang/ClassLoader;
    .restart local v3       #loader:Ldalvik/system/PathClassLoader;
    .restart local v4       #recorderEngine:Ljava/lang/Class;
    :cond_3
    new-instance v8, Lcom/htc/autotest/MethodReflection;

    const-string v9, "runRecorder"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/os/MessageQueue;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/os/Handler;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Landroid/app/Instrumentation;

    aput-object v12, v10, v11

    invoke-direct {v8, v4, v9, v10}, Lcom/htc/autotest/MethodReflection;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTRunRecorder:Lcom/htc/autotest/MethodReflection;

    .line 98
    new-instance v8, Lcom/htc/autotest/MethodReflection;

    const-string v9, "dumpShowDialog"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-direct {v8, v4, v9, v10}, Lcom/htc/autotest/MethodReflection;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowDialog:Lcom/htc/autotest/MethodReflection;

    .line 101
    new-instance v8, Lcom/htc/autotest/MethodReflection;

    const-string v9, "dumpShowActivity"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-direct {v8, v4, v9, v10}, Lcom/htc/autotest/MethodReflection;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowActivity:Lcom/htc/autotest/MethodReflection;

    .line 104
    new-instance v8, Lcom/htc/autotest/MethodReflection;

    const-string v9, "dumpShowMenu"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-direct {v8, v4, v9, v10}, Lcom/htc/autotest/MethodReflection;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowMenu:Lcom/htc/autotest/MethodReflection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/htc/autotest/RecordManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    sget-object v0, Lcom/htc/autotest/RecordManager;->sInstance:Lcom/htc/autotest/RecordManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/htc/autotest/RecordManager;

    invoke-direct {v0, p0}, Lcom/htc/autotest/RecordManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/autotest/RecordManager;->sInstance:Lcom/htc/autotest/RecordManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/htc/autotest/RecordManager;->sInstance:Lcom/htc/autotest/RecordManager;

    return-object v0
.end method


# virtual methods
.method dumpShowActivity(Ljava/lang/Object;Z)V
    .locals 5
    .parameter "obj"
    .parameter "isShow"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowActivity:Lcom/htc/autotest/MethodReflection;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowActivity:Lcom/htc/autotest/MethodReflection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/autotest/MethodReflection;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    return-void
.end method

.method dumpShowDialog(Ljava/lang/Object;Z)V
    .locals 5
    .parameter "obj"
    .parameter "isShow"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowDialog:Lcom/htc/autotest/MethodReflection;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowDialog:Lcom/htc/autotest/MethodReflection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/autotest/MethodReflection;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-void
.end method

.method dumpShowMenu(Landroid/view/KeyEvent;ZZ)V
    .locals 5
    .parameter "event"
    .parameter "isExpanded"
    .parameter "isExpandMenuShow"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowMenu:Lcom/htc/autotest/MethodReflection;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    const/16 v0, 0x52

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTdumpShowMenu:Lcom/htc/autotest/MethodReflection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/autotest/MethodReflection;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method runRecorder(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V
    .locals 4
    .parameter "context"
    .parameter "msgQueue"
    .parameter "handler"
    .parameter "ins"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTRunRecorder:Lcom/htc/autotest/MethodReflection;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/autotest/RecordManager;->aTRunRecorder:Lcom/htc/autotest/MethodReflection;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/autotest/MethodReflection;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    return-void
.end method
