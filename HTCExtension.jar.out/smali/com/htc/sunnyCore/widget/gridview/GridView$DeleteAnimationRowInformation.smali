.class public Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeleteAnimationRowInformation"
.end annotation


# instance fields
.field rowId:I

.field startX:I

.field startY:I

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 3
    .parameter

    .prologue
    .line 3714
    const/4 v0, -0x1

    const/high16 v1, -0x8000

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V

    .line 3715
    return-void
.end method

.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3716
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3717
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3718
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startX:I

    .line 3719
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    .line 3720
    return-void
.end method
