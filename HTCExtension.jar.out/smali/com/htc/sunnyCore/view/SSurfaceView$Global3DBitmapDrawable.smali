.class public Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global3DBitmapDrawable"
.end annotation


# instance fields
.field mBitmapSrcFilePath:Ljava/lang/String;

.field mBitmapSrcHeight:I

.field mBitmapSrcWidth:I

.field mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IILjava/lang/String;I)V
    .locals 0
    .parameter "res"
    .parameter "bitmap"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "path"
    .parameter "orientation"

    .prologue
    .line 1511
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1512
    iput p3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    .line 1513
    iput p4, p0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    .line 1514
    iput-object p5, p0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcFilePath:Ljava/lang/String;

    .line 1515
    iput p6, p0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mOrientation:I

    .line 1516
    return-void
.end method
