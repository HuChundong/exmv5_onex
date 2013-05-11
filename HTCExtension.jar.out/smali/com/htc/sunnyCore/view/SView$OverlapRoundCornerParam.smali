.class Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;
.super Ljava/lang/Object;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlapRoundCornerParam"
.end annotation


# instance fields
.field cornerRect:Landroid/graphics/Rect;

.field resId:I


# direct methods
.method constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 2830
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2831
    iput p1, p0, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;->resId:I

    .line 2832
    iput-object p2, p0, Lcom/htc/sunnyCore/view/SView$OverlapRoundCornerParam;->cornerRect:Landroid/graphics/Rect;

    .line 2833
    return-void
.end method
