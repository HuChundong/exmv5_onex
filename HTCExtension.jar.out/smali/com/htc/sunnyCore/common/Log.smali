.class public Lcom/htc/sunnyCore/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KEY_ENABLELOG:Ljava/lang/String; = "enablelog"

.field private static final KEY_LOGPREFIX:Ljava/lang/String; = "[OpenSense] "

.field private static final KEY_LOGSEVERITY:Ljava/lang/String; = "severity"

.field private static final KEY_LOGSTACK:Ljava/lang/String; = "[LogStack] "

.field private static final KEY_PREFIX:Ljava/lang/String; = "album.opensense.prop."

.field private static final SEVERITY_DEBUG:I = 0x3

.field private static final SEVERITY_ERROR:I = 0x0

.field private static final SEVERITY_INFORMATION:I = 0x2

.field private static final SEVERITY_VERBOSE:I = 0x4

.field private static final SEVERITY_WARNING:I = 0x1

.field private static gEnableLog:Z

.field private static gInitialized:Z

.field private static gSeverity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 104
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 105
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 114
    sget-boolean v3, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 116
    :cond_0
    sget-boolean v3, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[OpenSense] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, a:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 122
    array-length v2, p1

    .line 123
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 125
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0           #a:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 74
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 75
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 65
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 54
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 55
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    return-void
.end method

.method public static initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    const-string v0, "album.opensense.prop.enablelog"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    .line 36
    const-string v0, "album.opensense.prop.severity"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    .line 37
    sput-boolean v2, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    .line 38
    return-void

    .line 35
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    goto :goto_0
.end method

.method public static stackTrace(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 138
    const-string v5, "[LogStack] --------------------------------"

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 140
    .local v4, te:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 141
    .local v1, e:Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LogStack] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 45
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 84
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 85
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 94
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunnyCore/common/Log;->initialize()V

    .line 95
    :cond_0
    sget-boolean v0, Lcom/htc/sunnyCore/common/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/sunnyCore/common/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_1
    return-void
.end method
