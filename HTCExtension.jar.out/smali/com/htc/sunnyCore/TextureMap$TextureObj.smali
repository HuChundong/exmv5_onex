.class public Lcom/htc/sunnyCore/TextureMap$TextureObj;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/TextureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureObj"
.end annotation


# instance fields
.field private mIsRecycled:Z

.field private mReferenceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTexture:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunnyCore/TextureMap;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/TextureMap;ILcom/htc/sunnyCore/Texture;)V
    .locals 1
    .parameter
    .parameter "itemIdx"
    .parameter "texture"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->this$0:Lcom/htc/sunnyCore/TextureMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->mIsRecycled:Z

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    .line 48
    iput-object p3, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 49
    invoke-virtual {p0, p2}, Lcom/htc/sunnyCore/TextureMap$TextureObj;->addReference(I)V

    .line 50
    return-void
.end method

.method private releaseReference(I)V
    .locals 2
    .parameter "itemIdx"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public addReference(I)V
    .locals 2
    .parameter "itemIdx"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public release(I)V
    .locals 1
    .parameter "itemIdx"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/TextureMap$TextureObj;->releaseReference(I)V

    .line 60
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->mReferenceSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureMap$TextureObj;->this$0:Lcom/htc/sunnyCore/TextureMap;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/TextureMap;->recycle(Lcom/htc/sunnyCore/TextureMap$TextureObj;)V

    .line 63
    :cond_0
    return-void
.end method
