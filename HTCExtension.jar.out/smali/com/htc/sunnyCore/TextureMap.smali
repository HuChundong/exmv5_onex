.class public abstract Lcom/htc/sunnyCore/TextureMap;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/TextureMap$TextureObj;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunnyCore/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCount:I

.field private mTextureMaxCount:I

.field private mTexturePool:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunnyCore/TextureMap$TextureObj;",
            ">;"
        }
    .end annotation
.end field

.field private mValidItemsCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "itemsCount"
    .parameter "maxCount"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "TextureMap.TexturePool TextureObj Recycler"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/TextureMap;->mTexturePool:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 19
    iput p1, p0, Lcom/htc/sunnyCore/TextureMap;->mItemsCount:I

    .line 20
    iput p2, p0, Lcom/htc/sunnyCore/TextureMap;->mTextureMaxCount:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/htc/sunnyCore/TextureMap;->mTextureMaxCount:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/TextureMap;->mHashMap:Ljava/util/HashMap;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/TextureMap;->mValidItemsCount:I

    .line 23
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;
.end method

.method public abstract getTexturesCount()I
.end method

.method public obtain()Lcom/htc/sunnyCore/TextureMap$TextureObj;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureMap;->mTexturePool:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/TextureMap$TextureObj;

    return-object v0
.end method

.method public abstract put(Ljava/lang/String;Lcom/htc/sunnyCore/TextureMap$TextureObj;)Z
.end method

.method public recycle(Lcom/htc/sunnyCore/TextureMap$TextureObj;)V
    .locals 1
    .parameter "textureObj"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureMap;->mTexturePool:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public abstract releaseAllTextureObj()V
.end method

.method public abstract releaseReference(Ljava/lang/String;I)Z
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method
