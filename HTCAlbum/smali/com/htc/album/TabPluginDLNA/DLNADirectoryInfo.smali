.class public Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
.super Ljava/lang/Object;
.source "DLNADirectoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_PLACEHOLDER:Ljava/lang/String; = "###"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mID:Ljava/lang/String;

.field private mIndexPage:I

.field private mListPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 352
    return-void
.end method


# virtual methods
.method public addFilePage(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Z
    .locals 3
    .parameter "pageInfo"

    .prologue
    const/4 v1, 0x0

    .line 310
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return v1

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 316
    .local v0, nPageSize:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    if-nez v0, :cond_2

    .line 319
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 324
    .end local v0           #nPageSize:I
    :cond_1
    :goto_1
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DLNADirectoryInfo]Add File page"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x1

    goto :goto_0

    .line 321
    .restart local v0       #nPageSize:I
    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto :goto_1
.end method

.method public createEmtpyPage()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 4

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 28
    .local v0, nPageSize:I
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 29
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 35
    :goto_0
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][DLNADirectoryInfo]Add New empty page..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v1

    .line 33
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public exportPages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 77
    .local v3, nPageSize:I
    if-nez v3, :cond_0

    move-object v1, v0

    .line 98
    .end local v0           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 80
    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    .line 81
    .local v4, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v0       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    if-le v3, v2, :cond_2

    .line 84
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .restart local v4       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-nez v4, :cond_1

    .line 82
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 98
    .end local v0           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 5

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 170
    .local v0, nPageSize:I
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 173
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 178
    :cond_0
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageCurrent]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gt v0, v2, :cond_1

    .line 180
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 183
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 184
    return-object v1
.end method

.method public getPageInfo(I)Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, nPageSize:I
    if-nez v0, :cond_0

    move-object v2, v1

    .line 128
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .local v2, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :goto_0
    return-object v2

    .line 123
    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_0
    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_2

    :cond_1
    move-object v2, v1

    .line 124
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    goto :goto_0

    .line 126
    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    move-object v2, v1

    .line 128
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    goto :goto_0
.end method

.method public getPageNext()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v2, 0x0

    .line 216
    .local v2, pageInfoNext:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 218
    .local v0, nPageSize:I
    if-nez v0, :cond_0

    .line 220
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Create first page..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 222
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 255
    :goto_0
    invoke-virtual {v1, v7}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 258
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: DirN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Mid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Bot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v3, v7}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    move-object v3, v1

    .line 267
    :goto_1
    return-object v3

    .line 225
    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    if-le v0, v3, :cond_1

    .line 227
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Next page..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 229
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto/16 :goto_0

    .line 233
    :cond_1
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-lt v3, v0, :cond_2

    .line 235
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: index is out of pagesize"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v3, 0x0

    goto :goto_1

    .line 239
    :cond_2
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Create new page..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 245
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v2           #pageInfoNext:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 246
    .restart local v2       #pageInfoNext:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 247
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 248
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 249
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: sync previous info"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto/16 :goto_0
.end method

.method public getPagePrevious()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 271
    const/4 v4, 0x0

    .line 272
    .local v4, pageInfoPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v1, 0x0

    .line 273
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v3, 0x0

    .line 275
    .local v3, pageInfoCached:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 277
    .local v0, nPageSize:I
    if-eqz v0, :cond_0

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gtz v5, :cond_1

    :cond_0
    move-object v2, v1

    .line 306
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .local v2, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :goto_0
    return-object v2

    .line 280
    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 281
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 283
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gt v9, v5, :cond_2

    .line 285
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pageInfoPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 288
    .restart local v4       #pageInfoPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_2
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 289
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gez v5, :cond_3

    .line 290
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 292
    :cond_3
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: DirN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v4, :cond_4

    .line 295
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Prev Bot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 298
    :cond_4
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Mid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Bot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v5, v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    move-object v2, v1

    .line 306
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    goto/16 :goto_0
.end method

.method public getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, nPageSize:I
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 193
    if-nez v0, :cond_0

    .line 195
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 196
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 197
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_0
    return-object v1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 202
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 203
    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 204
    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 205
    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    goto :goto_0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public importPages(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, importInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 71
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 45
    .local v1, nPageSize:I
    if-eqz v1, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 51
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 54
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 68
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printCurrentPageLog()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 358
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    const-class v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 359
    return-void
.end method

.method public removeAllPages()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 336
    :cond_0
    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 136
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 137
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .parameter "szID"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 372
    return-void
.end method
