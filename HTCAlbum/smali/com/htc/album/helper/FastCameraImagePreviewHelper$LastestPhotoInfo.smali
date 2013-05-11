.class public Lcom/htc/album/helper/FastCameraImagePreviewHelper$LastestPhotoInfo;
.super Ljava/lang/Object;
.source "FastCameraImagePreviewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/FastCameraImagePreviewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastestPhotoInfo"
.end annotation


# instance fields
.field filePath:Ljava/lang/String;

.field isBurstShot:Z

.field orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
