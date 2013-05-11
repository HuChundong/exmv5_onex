.class public Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;
.super Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
.source "EventGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/EventGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventCell"
.end annotation


# instance fields
.field private prototypeIdentifier:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/EventGridView;Lcom/htc/sunnyCore/ViewItem;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "prototypeIdentifier"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridView;

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;)V

    .line 529
    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->prototypeIdentifier:Ljava/lang/Integer;

    .line 530
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridView$EventCell;->prototypeIdentifier:Ljava/lang/Integer;

    return-object v0
.end method
