.class public Lcom/htc/album/AlbumUtility/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final KEY_ENABLELOG:Ljava/lang/String; = "enablelog"

.field private static final KEY_LOGPREFIX:Ljava/lang/String; = "[HTCAlbum] "

.field private static final KEY_LOGSEVERITY:Ljava/lang/String; = "severity"

.field private static final KEY_LOGSTACK:Ljava/lang/String; = "[LogStack] "

.field private static final KEY_PREFIX:Ljava/lang/String; = "album.prop."

.field private static final SEVERITY_DEBUG:I = 0x3

.field private static final SEVERITY_ERROR:I = 0x0

.field private static final SEVERITY_INFORMATION:I = 0x2

.field private static final SEVERITY_VERBOSE:I = 0x4

.field private static final SEVERITY_WARNING:I = 0x1

.field private static gEnableLog:Z

.field private static gInitialized:Z

.field private static gSecurityLog:Z

.field private static gSeverity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    .line 28
    sput-boolean v1, Lcom/htc/album/AlbumUtility/Log;->gSecurityLog:Z

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    .line 31
    sput-boolean v1, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 83
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 84
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 90
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 92
    :cond_0
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[HTCAlbum] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, a:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 98
    array-length v2, p1

    .line 99
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 101
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0           #a:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 63
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 56
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 49
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void
.end method

.method public static initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    const-string v0, "album.prop.enablelog"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    .line 36
    const-string v0, "album.prop.severity"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    .line 37
    sput-boolean v2, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    .line 38
    return-void

    .line 35
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    goto :goto_0
.end method

.method public static sd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 139
    const/4 v0, 0x1

    sget-boolean v1, Lcom/htc/album/AlbumUtility/Log;->gSecurityLog:Z

    if-ne v0, v1, :cond_0

    .line 141
    invoke-static {p0, p1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public static stackTrace(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 131
    const-string v5, "[LogStack] --------------------------------"

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 133
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

    .line 134
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

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static sw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 147
    const/4 v0, 0x1

    sget-boolean v1, Lcom/htc/album/AlbumUtility/Log;->gSecurityLog:Z

    if-ne v0, v1, :cond_0

    .line 149
    invoke-static {p0, p1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 42
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 69
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 70
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 76
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 77
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_1
    return-void
.end method

.method public static varargs w2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 111
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 113
    :cond_0
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[HTCAlbum] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, a:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 119
    array-length v2, p1

    .line 120
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 122
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #a:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method
