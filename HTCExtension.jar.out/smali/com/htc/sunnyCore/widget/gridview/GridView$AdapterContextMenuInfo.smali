.class public Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3908
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 3910
    iput-wide p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->id:J

    .line 3911
    return-void
.end method
