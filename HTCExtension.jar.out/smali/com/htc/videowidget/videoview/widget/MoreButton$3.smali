.class Lcom/htc/videowidget/videoview/widget/MoreButton$3;
.super Ljava/lang/Object;
.source "MoreButton.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/MoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$3;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "paramView"
    .parameter "paramInt"
    .parameter "paramLong"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, paramHtcAdapterView:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$3;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0, p3, v1, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->onSelecetListItem(IZZ)V

    .line 440
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$3;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->hide()V

    .line 441
    return-void
.end method
