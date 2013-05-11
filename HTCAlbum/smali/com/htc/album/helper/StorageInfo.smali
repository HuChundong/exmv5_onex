.class public Lcom/htc/album/helper/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "path"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/album/helper/StorageInfo;->mName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/htc/album/helper/StorageInfo;->mPath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/album/helper/StorageInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/album/helper/StorageInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/album/helper/StorageInfo;->mName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/helper/StorageInfo;->mPath:Ljava/lang/String;

    .line 52
    return-void
.end method
