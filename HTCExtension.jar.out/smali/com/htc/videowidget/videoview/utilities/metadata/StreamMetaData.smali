.class public Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;
.super Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;
.source "StreamMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamMetaData"


# instance fields
.field private mDownloadThread:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->checkEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "val"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 133
    if-nez p1, :cond_1

    move-object p1, v0

    .line 137
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 134
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v2, :cond_2

    move-object p1, v0

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public prepare()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    .line 29
    return-void
.end method
