.class public Lcom/htc/sunnyCore/TextureList$TextureObjList;
.super Ljava/lang/Object;
.source "TextureList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/TextureList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureObjList"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunnyCore/TextureMap$TextureObj;",
            ">;"
        }
    .end annotation
.end field

.field public mType:I

.field final synthetic this$0:Lcom/htc/sunnyCore/TextureList;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/TextureList;I)V
    .locals 2
    .parameter
    .parameter "type"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->this$0:Lcom/htc/sunnyCore/TextureList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-class v0, Lcom/htc/sunnyCore/TextureList$TextureObjList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    .line 63
    iput p2, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mType:I

    .line 64
    return-void
.end method


# virtual methods
.method public get(I)Lcom/htc/sunnyCore/TextureMap$TextureObj;
    .locals 2
    .parameter "index"

    .prologue
    .line 79
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][get]: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/TextureMap$TextureObj;

    goto :goto_0
.end method

.method public remove(I)Lcom/htc/sunnyCore/TextureMap$TextureObj;
    .locals 2
    .parameter "index"

    .prologue
    .line 87
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][remove]: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/TextureMap$TextureObj;

    goto :goto_0
.end method

.method public set(ILcom/htc/sunnyCore/TextureMap$TextureObj;)V
    .locals 2
    .parameter "index"
    .parameter "obj"

    .prologue
    .line 67
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][set]: index out of bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_1
    if-nez p2, :cond_2

    .line 72
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->TAG:Ljava/lang/String;

    const-string v1, "[TextureObjList][set]: obj is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/TextureList$TextureObjList;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
