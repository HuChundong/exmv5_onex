.class public Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/common/TextureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextureInfo"
.end annotation


# instance fields
.field public identifier:Ljava/lang/String;

.field public sunnyTexture:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunnyCore/common/TextureMap;


# direct methods
.method protected constructor <init>(Lcom/htc/sunnyCore/common/TextureMap;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    iput-object p1, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->this$0:Lcom/htc/sunnyCore/common/TextureMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    .line 24
    iput-object v0, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    .line 32
    iput-object v0, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public set(Lcom/htc/sunnyCore/Texture;Ljava/lang/String;)V
    .locals 0
    .parameter "texture"
    .parameter "id"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunnyCore/Texture;

    .line 28
    iput-object p2, p0, Lcom/htc/sunnyCore/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    .line 29
    return-void
.end method
