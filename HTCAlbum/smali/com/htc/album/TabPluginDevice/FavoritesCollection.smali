.class public Lcom/htc/album/TabPluginDevice/FavoritesCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "FavoritesCollection.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final HAS_PEN:Z = false

.field static final favoriteProjection:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;->favoriteProjection:[Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isSupportPenPaint()Z

    move-result v0

    sput-boolean v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;->HAS_PEN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onBulkDeleteIBT(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 75
    return-void
.end method

.method public onDeleteIBT(Landroid/content/ContentResolver;I)V
    .locals 10
    .parameter "resolver"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v7

    .line 55
    .local v7, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v7, :cond_0

    .line 71
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v9, values:Landroid/content/ContentValues;
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, imageUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 62
    .local v8, value:I
    sget-object v2, Lcom/htc/album/TabPluginDevice/FavoritesCollection;->favoriteProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 65
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    const-string v0, "favorite"

    and-int/lit8 v2, v8, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-virtual {p1, v1, v9, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    goto :goto_0
.end method
