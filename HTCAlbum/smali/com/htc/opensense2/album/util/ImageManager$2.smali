.class Lcom/htc/opensense2/album/util/ImageManager$2;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager;->emptyImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 10607
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$2;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCursor()V
    .locals 0

    .prologue
    .line 10616
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 10610
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 10613
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 10622
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 10626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 10638
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 10634
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10631
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    return-void
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 10618
    const/4 v0, 0x0

    return v0
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 10642
    const/4 v0, 0x0

    return v0
.end method
