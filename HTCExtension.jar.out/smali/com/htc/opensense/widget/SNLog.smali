.class public final Lcom/htc/opensense/widget/SNLog;
.super Ljava/lang/Object;
.source "SNLog.java"


# static fields
.field private static final LOG_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 42
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 129
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 142
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 67
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 17
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 92
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 105
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 117
    sget-boolean v0, Lcom/htc/opensense/widget/SNLog;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    return-void
.end method
