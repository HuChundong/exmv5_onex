.class Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;
.super Ljava/lang/Object;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureSprite"
.end annotation


# instance fields
.field public mSprite:Lcom/htc/sunnyCore/Sprite;

.field public mTexture:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1856
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1863
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 1866
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_1

    .line 1870
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 1871
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$TextureSprite;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 1873
    :cond_1
    return-void
.end method
