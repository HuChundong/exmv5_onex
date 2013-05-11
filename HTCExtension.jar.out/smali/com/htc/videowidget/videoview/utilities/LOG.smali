.class public Lcom/htc/videowidget/videoview/utilities/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 28
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "TAG"
    .parameter "e"

    .prologue
    .line 68
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->getTwoLineInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 18
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static getLineInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 84
    .local v2, ste:[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v1, result:Ljava/lang/StringBuffer;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 87
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_0
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v3, "] \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 94
    const-string v3, "  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v3, ", Func:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v3, ", Line:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    const-string v3, " \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getOneLineInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 114
    .local v2, ste:[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v1, result:Ljava/lang/StringBuffer;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 117
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_0
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v3, "] \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 124
    const-string v3, "  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 126
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v3, ", Func:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v3, ", Line:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 132
    const-string v3, " \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getTwoLineInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 143
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 145
    .local v2, ste:[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v1, result:Ljava/lang/StringBuffer;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 148
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_0
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v3, "] \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 155
    const-string v3, "  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 157
    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v3, ", Func:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v3, ", Line:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    const-string v3, " \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    return v0
.end method
