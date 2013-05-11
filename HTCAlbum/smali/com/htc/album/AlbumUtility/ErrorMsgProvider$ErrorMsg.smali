.class public Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/ErrorMsgProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMsg"
.end annotation


# instance fields
.field mResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x20401fe

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x20401fe

    iput v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    .line 29
    iput p1, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    .line 30
    return-void
.end method


# virtual methods
.method public getMsg()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;->mResId:I

    return v0
.end method
